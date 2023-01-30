//
//  ProfileView.swift
//  SimpleApp
//
//  Created by Semmy Lee on 1/16/23.
//

import SwiftUI

struct SocialButton: View {
    @State var text: String
    @State var icon: String
    @State var link: String
    @State var image: String = "YTLogo"
    
    func pickIcon() {
        switch icon{
        case "YT":
            image = "YTLogo"
        case "TW":
            image = "TWLogo"
        case "IG":
            image = "IGLogo"
        default:
            image = "YTLogo"
        }
    }
    
    var body: some View {
        Button {
            UIApplication.shared.open(URL(string: "\(link)")!)
        } label: {
            HStack{
                Image("\(image)")
                    .onAppear{
                        pickIcon()
                    }
                Text("\(text)")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundColor(.black)
            }
        }
    }
}

struct ProfileView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var manager: Manager
    
    let screen = ScreenCal()
    
    var body: some View {
        
        
        ZStack{
            Color("White").ignoresSafeArea()
            VStack{
                ZStack{
                    Image("ProfileBackground")
                        .resizable()
                        .scaledToFill()
                        .frame(width: screen.width, height: 400)
                        .clipped()
                        .ignoresSafeArea()
                        .overlay(
                            RoundedRectangle(cornerRadius: 22)
                                .frame(width: screen.width, height: 50)
                                .foregroundColor(Color("White"))
                                .padding(.top, 380)
                                
                        )
                        .frame(maxHeight: .infinity, alignment: .top)
                    
                    VStack{
                        VStack{
                            // Profile Picture
                            Image("ProfilePicture")
                                .resizable()
                                .offset(y:10)
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .cornerRadius(100)
                                .padding(.top, 50)


                            Text("Semmy")
                                .font(.system(size: 24, design: .monospaced))
                                .foregroundColor(Color("White"))
                                .padding()
                            Text("You need everyday news or a good title for a news im the right guy")
                                .font(.custom("AmericanTypewriter", size: 15))
                                .foregroundColor(Color("White"))
                                .frame(width: 275)
                                .multilineTextAlignment(.center)
                        }
                        .frame(maxHeight: .infinity, alignment: .top)
                        .padding(.top, -40)
                        Text("My Project")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.bottom, 40)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 30)
                    }
                    .frame(height: 360)
                    .padding(.top, 86)
                }
                .frame(height: 390)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        ForEach(manager.myProject, id:\.self) { item in
                            ProjectCard(imgURL: "\(item.imgURL)", pjTitle: "\(item.title)")
                        }
                    }
                }
                .padding(8)
                .padding(.top, -10)
                
                Text("About me")
                    .font(.system(size: 24, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 30)
                Text("Hello there my name is Semmy if you don’t know me im actually making this video right now to show you how to make a simple start app maybe making a create mechanic on this app if you want to check it out go on to my channel on the social media link")
                    .font(.custom("AmericanTypewriter", size: 15))
                    .frame(width: 360)
                    .padding(.horizontal, 10)
                    .padding(.top, 1)
                Text("Social Media")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 30)
                    .padding(.top, 10)
                // Here is my social media follow me on there to see what im doing in my free time
                // And for the tutorial of this app the video have to hit 100 views the I'll make one for you guys
                VStack{
                    SocialButton(text: "SemmyDev", icon: "YT", link: "https://www.youtube.com/channel/UCqchWyG186yk4v6mYd3p5aQ")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    SocialButton(text: "@semmyuu", icon: "TW", link: "https://twitter.com/semmyuu")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    SocialButton(text: "@its_semyuu", icon: "IG", link: "https://www.instagram.com/its_semyuu/")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal, 34)

                
                Spacer()
            }
        }
        
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    self.mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrowtriangle.backward.fill")
                        .foregroundColor(.white)
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(manager: Manager())
    }
}
