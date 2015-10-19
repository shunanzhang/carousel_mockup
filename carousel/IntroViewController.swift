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
    
    
    var newTransform1: CGAffineTransform!
    var newTransform21: CGAffineTransform!
    var newTransform22: CGAffineTransform!
    var newTransform31: CGAffineTransform!
    var newTransform32: CGAffineTransform!
    var newTransform41: CGAffineTransform!
    var newTransform42: CGAffineTransform!
    var newTransform51: CGAffineTransform!
    var newTransform52: CGAffineTransform!
    var newTransform61: CGAffineTransform!
    var newTransform62: CGAffineTransform!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        introScrollView.contentSize = introImageView.image!.size
        
        introScrollView.delegate = self
        
        newTransform1 = CGAffineTransformMakeTranslation(-80, -350)
        imageView1.transform =  CGAffineTransformRotate(newTransform1, CGFloat(-M_PI/5))
        
        newTransform21 = CGAffineTransformMakeTranslation(-60, -350)
        newTransform22 = CGAffineTransformRotate(newTransform21, CGFloat(M_PI/30))
        imageView2.transform =  CGAffineTransformScale(newTransform22, 2, 2)
        
        newTransform31 = CGAffineTransformMakeTranslation(0, -360)
        newTransform32 = CGAffineTransformRotate(newTransform31, CGFloat(M_PI/10))
        imageView3.transform =  CGAffineTransformScale(newTransform32, 2, 2)
        
        newTransform41 = CGAffineTransformMakeTranslation(20, -380)
        newTransform42 = CGAffineTransformRotate(newTransform41, CGFloat(M_PI/6))
        imageView4.transform =  CGAffineTransformScale(newTransform42, 2, 2)
        
        newTransform51 = CGAffineTransformMakeTranslation(0, -400)
        newTransform52 = CGAffineTransformRotate(newTransform51, CGFloat(M_PI/20))
        imageView5.transform =  CGAffineTransformScale(newTransform52, 1.8, 1.8)
        
        newTransform61 = CGAffineTransformMakeTranslation(0, -400)
        newTransform62 = CGAffineTransformRotate(newTransform61, CGFloat(M_PI/50))
        imageView6.transform =  CGAffineTransformScale(newTransform62, 2, 2)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView){
        UIView.animateWithDuration(1.5) { () -> Void in
            self.imageView1.transform = CGAffineTransformIdentity
            self.imageView2.transform = CGAffineTransformIdentity
            self.imageView3.transform = CGAffineTransformIdentity
            self.imageView4.transform = CGAffineTransformIdentity
            self.imageView5.transform = CGAffineTransformIdentity
            self.imageView6.transform = CGAffineTransformIdentity
        }
    }
    
    // called on start of dragging (may require some time and or distance to move)
    func scrollViewWillBeginDragging(scrollView: UIScrollView){
        
        
    }
    
    // called on finger up if the user dragged. velocity is in points/millisecond. targetContentOffset may be changed to adjust where the scroll view comes to rest
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool){
        
    }
    
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView){
        
    }
    
    
}


