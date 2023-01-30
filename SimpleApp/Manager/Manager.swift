//
//  Manager.swift
//  SimpleApp
//
//  Created by Semmy Lee on 1/20/23.
//

import Foundation

// More code is going be added in this calss
class Manager: ObservableObject {
    var sampleNews: [News]
    var myProject: [MyProject]
    
    init() {
        self.sampleNews = News.sampleNews
        self.myProject = MyProject.sampleProject
    }
    
    func update(){
        // Here's where the new feature will come
    }
    
    func create(){
        // Here's where the new feature will come
    }
    
    func delete(){
        // Here's where the new feature will come
    }
    
    
    
}
