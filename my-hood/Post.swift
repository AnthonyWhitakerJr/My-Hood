//
//  Post.swift
//  my-hood
//
//  Created by Anthony Whitaker on 7/19/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {

    private var _imagePath: String
    private var _title:     String
    private var _postDesc:  String

    var imagePath: String {
        return _imagePath
    }

    var title: String {
        return _title
    }

    var postDesc: String {
        return _postDesc
    }

    init(imagePath: String, title: String, description: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDesc = description
    }

    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._imagePath, forKey: "imagePath")
        aCoder.encodeObject(self._title, forKey: "title")
        aCoder.encodeObject(self._postDesc, forKey: "postDesc")
    }

    required convenience init?(coder aDecoder: NSCoder) {
        self.init(imagePath: aDecoder.decodeObjectForKey("imagePath") as! String,
                title: aDecoder.decodeObjectForKey("title") as! String,
                description: aDecoder.decodeObjectForKey("postDesc") as! String)
    }
}
