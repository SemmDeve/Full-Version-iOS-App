//
//  News.swift
//  SimpleApp
//
//  Created by Semmy Lee on 1/20/23.
//

import Foundation

struct MyProject: Hashable {
    var title: String
    var imgURL: String
    
    static var sampleProject: [MyProject] {[
        MyProject(title: "P.1", imgURL: "https://i.pinimg.com/564x/c1/d5/1d/c1d51df66b8acb2f9a3f443ea9d20f46.jpg"),
        MyProject(title: "P.2", imgURL: "https://i.pinimg.com/236x/2b/9b/3d/2b9b3d314267cf7c504fa48acb8bf35f.jpg"),
        MyProject(title: "P.3", imgURL: "https://i.pinimg.com/236x/39/bb/84/39bb843df2b0f012b8c9e4deeead99da.jpg"),
        MyProject(title: "P.4", imgURL: "https://i.pinimg.com/236x/6f/a8/2e/6fa82e9c421e62f8b726e682f3a7fa51.jpg"),
        MyProject(title: "P.7", imgURL: "https://i.pinimg.com/236x/d1/56/35/d15635f5601b439739dd8b01e3752d27.jpg"),
        MyProject(title: "P.6", imgURL: "https://i.pinimg.com/236x/3c/6f/a4/3c6fa49140a34890dfa220dc98cc6b32.jpg"),
        MyProject(title: "P.8", imgURL: "https://i.pinimg.com/236x/8f/f9/ad/8ff9adcc0d8040c6b036003a3219b09c.jpg"),
        MyProject(title: "P.8", imgURL: "https://i.pinimg.com/236x/65/87/f9/6587f97afd890c3c2de143b10d854b7c.jpg"),
        MyProject(title: "P.9", imgURL: "https://i.pinimg.com/236x/73/06/c5/7306c52bed19fce7790c5857dbaf23a1.jpg"),
        MyProject(title: "P.10", imgURL: "https://i.pinimg.com/236x/3c/a4/ab/3ca4abb1c671682142f7dbee6e269139.jpg"),
    ]}
}

struct News: Hashable {
    var title: String
    var secTitle: String
    var aboutNews: String
    var imgURL: String
    var smalDisc: String
    
    static var sampleNews: [News] {[
        News(title: "The Circle", secTitle: "Of Fifths", aboutNews: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quam elit, cursus in odio vitae, elementum condimentum purus. Donec varius enim eu nibh tristique, ac blandit diam auctor. Nulla sed nisi vestibulum, euismod turpis eget, vestibulum urna. Suspendisse aliquam, sapien et auctor varius, massa nunc interdum nulla, quis maximus magna lectus ut justo. Proin in lacus imperdiet, molestie ex ac, posuere erat. Integer blandit nulla neque, et maximus velit dictum sed. In eget accumsan massa, id dictum arcu. Suspendisse vel dictum sapien. Fusce id metus vel mi laoreet imperdiet. Proin et lectus orci. Suspendisse ut suscipit odio. Fusce eu cursus magna, ac convallis metus. Mauris dictum neque eros, ut efficitur lacus dignissim no", imgURL: "https://i.pinimg.com/564x/20/fb/05/20fb05d151129c1dc4fabdd97c5fd824.jpg", smalDisc: "Find your beauty"),
        News(title: "Moon", secTitle: "Appollo", aboutNews: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quam elit, cursus in odio vitae, elementum condimentum purus. Donec varius enim eu nibh tristique, ac blandit diam auctor. Nulla sed nisi vestibulum, euismod turpis eget, vestibulum urna. Suspendisse aliquam, sapien et auctor varius, massa nunc interdum nulla, quis maximus magna lectus ut justo. Proin in lacus imperdiet, molestie ex ac, posuere erat. Integer blandit nulla neque, et maximus velit dictum sed. In eget accumsan massa, id dictum arcu. Suspendisse vel dictum sapien. Fusce id metus vel mi laoreet imperdiet. Proin et lectus orci. Suspendisse ut suscipit odio. Fusce eu cursus magna, ac convallis metus. Mauris dictum neque eros, ut efficitur lacus dignissim no", imgURL: "https://i.pinimg.com/564x/87/93/78/8793781ad1d111d0049f3fd88e2a9b89.jpg", smalDisc: "First man on the moon"),
        News(title: "Old Japaness", secTitle: "Car", aboutNews: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quam elit, cursus in odio vitae, elementum condimentum purus. Donec varius enim eu nibh tristique, ac blandit diam auctor. Nulla sed nisi vestibulum, euismod turpis eget, vestibulum urna. Suspendisse aliquam, sapien et auctor varius, massa nunc interdum nulla, quis maximus magna lectus ut justo. Proin in lacus imperdiet, molestie ex ac, posuere erat. Integer blandit nulla neque, et maximus velit dictum sed. In eget accumsan massa, id dictum arcu. Suspendisse vel dictum sapien. Fusce id metus vel mi laoreet imperdiet. Proin et lectus orci. Suspendisse ut suscipit odio. Fusce eu cursus magna, ac convallis metus. Mauris dictum neque eros, ut efficitur lacus dignissim no", imgURL: "https://i.pinimg.com/564x/15/8c/68/158c68cceeca9244927b2dba06cfacd8.jpg", smalDisc: "Cool old car"),
        News(title: "Tuch", secTitle: "Grass", aboutNews: "Grasssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss", imgURL: "https://i.pinimg.com/736x/c0/08/1f/c0081fa3dbc5f1bc66a12441657d329a.jpg", smalDisc: "Cool old car"),
        News(title: "6 Beauty", secTitle: "Tips", aboutNews: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quam elit, cursus in odio vitae, elementum condimentum purus. Donec varius enim eu nibh tristique, ac blandit diam auctor. Nulla sed nisi vestibulum, euismod turpis eget, vestibulum urna. Suspendisse aliquam, sapien et auctor varius, massa nunc interdum nulla, quis maximus magna lectus ut justo. Proin in lacus imperdiet, molestie ex ac, posuere erat. Integer blandit nulla neque, et maximus velit dictum sed. In eget accumsan massa, id dictum arcu. Suspendisse vel dictum sapien. Fusce id metus vel mi laoreet imperdiet. Proin et lectus orci. Suspendisse ut suscipit odio. Fusce eu cursus magna, ac convallis metus. Mauris dictum neque eros, ut efficitur lacus dignissim no", imgURL: "https://i.pinimg.com/564x/c1/d5/1d/c1d51df66b8acb2f9a3f443ea9d20f46.jpg", smalDisc: "True beauty")
    ]}
}
