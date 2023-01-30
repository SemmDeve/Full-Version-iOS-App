//
//  ProjectCard.swift
//  SimpleApp
//
//  Created by Semmy Lee on 1/16/23.
//

import SwiftUI

struct ProjectCard: View {
    
    @State var imgURL: String
    @State var pjTitle: String
    @State var data: Data?
    
    func fatchData() {
        guard let url = URL(string: imgURL) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            if error == nil{
                self.data = data
            }
        }.resume()
    }
    
    var body: some View {
        ZStack{
            if let data = data, let uiimg = UIImage(data: data){
                Image(uiImage: uiimg)
                    .resizable()
                    .frame(width: 200, height: 200)
            } else {
                Image("")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .background(.gray)
                    .onAppear{
                        fatchData()
                    }
            }
            Text("\(pjTitle)")
                .font(.system(size: 46, weight: .bold))
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(Color.red)
        .cornerRadius(22)
        .padding(7)
        
    }
}

struct ProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCard(imgURL: "https://i.pinimg.com/564x/c1/d5/1d/c1d51df66b8acb2f9a3f443ea9d20f46.jpg", pjTitle: "P.1")
    }
}
