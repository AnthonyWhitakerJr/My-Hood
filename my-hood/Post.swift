//
//  Post.swift
//  my-hood
//
//  Created by Anthony Whitaker on 7/19/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import Foundation

class Post {
    
    private var imagePath: String
    private var title: String
    private var postDesc: String
    
    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
}
