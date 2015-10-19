//
//  IntroViewController.swift
//  carousel
//
//  Created by Shunan Zhang on 10/17/15.
//  Copyright © 2015 Shunan Zhang. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var imageView6: UIImageView!
    
    let image1X = 46
    let image1Y = 745
    let image2X = 198
    let image2Y = 745
    let image3X = 198
    let image3Y = 821
    let image4X = 198
    let image4Y = 897
    let image5X = 123
    let image5Y = 897
    let image6X = 46
    let image6Y = 897
    
    var rotation = CGFloat(0)
    var tx = CGFloat(0)
    var ty = CGFloat(0)
    
    var rotationTransform: CGAffineTransform!
    var translationTransform:CGAffineTransform!
    var overallTransform: CGAffineTransform!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        introScrollView.contentSize = introImageView.image!.size
        
        introScrollView.delegate = self
        
      //  imageView1.transform =  CGAffineTransformMakeRotation(CGFloat(45 * M_PI / 180))
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView){
        imageView1.frame.origin.x = 46
        imageView1.frame.origin.y = 745
        //imageView1.transform = CGAffineTransformMakeRotation(CGFloat(45 * M_PI / 180))
        
    }
    
    // called on start of dragging (may require some time and or distance to move)
    func scrollViewWillBeginDragging(scrollView: UIScrollView){
        
        
    }
    
    // called on finger up if the user dragged. velocity is in points/millisecond. targetContentOffset may be changed to adjust where the scroll view comes to rest
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool){
        
    }
    
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView){
        
    }
    
    func updateTransform(){
        rotationTransform = CGAffineTransformMakeRotation(rotation)
        translationTransform = CGAffineTransformMakeTranslation(tx, ty)
        overallTransform = CGAffineTransformConcat(rotationTransform, translationTransform)
    }
    

    
}


