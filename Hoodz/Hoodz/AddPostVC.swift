//
//  AddPostVC.swift
//  Hoodz
//
//  Created by Dulio Denis on 11/16/15.
//  Copyright © 2015 Dulio Denis. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        postImage.layer.cornerRadius = postImage.frame.size.width / 2
        postImage.clipsToBounds = true
    }
    
    // MARK: Action Functions
    
    @IBAction func makePostTapped(sender: AnyObject) {
        
    }
    
    @IBAction func cancelTapped(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addPicTapped(sender: UIButton!) {
        sender.setTitle("", forState: .Normal)
    }
}
