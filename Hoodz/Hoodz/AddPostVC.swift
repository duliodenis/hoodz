//
//  AddPostVC.swift
//  Hoodz
//
//  Created by Dulio Denis on 11/16/15.
//  Copyright © 2015 Dulio Denis. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        postImage.layer.cornerRadius = postImage.frame.size.width / 2
        postImage.clipsToBounds = true
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
    
    // MARK: Action Functions
    
    @IBAction func makePostTapped(sender: AnyObject) {
        if let title = titleField.text, let desc = descriptionField.text, let image = postImage.image {
            let imagePath = DataService.instance.saveImageAndCreatePath(image)
            
            let post = Post(imagePath: imagePath, title: title, postDescription: desc)
            DataService.instance.addPost(post)
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func cancelTapped(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addPicTapped(sender: UIButton!) {
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    // MARK: Image Picker Controller Delegate Method
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImage.image = image
    }
}
