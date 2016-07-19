//
//  PostCell.swift
//  my-hood
//
//  Created by Anthony Whitaker on 7/19/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func configureCell(post: Post) {
        titleLabel.text = post.title
        descriptionLabel.text = post.postDesc
    }
}
