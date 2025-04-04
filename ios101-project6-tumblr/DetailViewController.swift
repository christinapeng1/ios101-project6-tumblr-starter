//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Christina Peng on 4/3/25.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    var post: Post!
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var postImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = post.caption.trimHTMLTags()
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: postImage)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
