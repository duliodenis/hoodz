//
//  PostCell.swift
//  Hoodz
//
//  Created by Dulio Denis on 11/15/15.
//  Copyright © 2015 Dulio Denis. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        postImage.layer.cornerRadius = postImage.frame.size.width / 2
        postImage.clipsToBounds = true
    }
    
    func configureCell(post: Post) {
        titleLabel.text = post.title
        descriptionLabel.text = post.postDescription
        postImage.image = DataService.instance.imageForPath(post.imagePath)
    }

}
