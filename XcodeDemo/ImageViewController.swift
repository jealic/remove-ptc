//
//  ImageViewController.swift
//  XcodeDemo
//
//  Created by Brian Hu on 5/26/16.
//  Copyright © 2016 AlphaCamp. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var imageView: UIImageView?
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: imageName!)
        
        self.imageView = UIImageView(image: image)
        
        self.scrollView.delegate = self
        
        self.scrollView.addSubview(imageView!)
        self.scrollView.contentSize = imageView!.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
