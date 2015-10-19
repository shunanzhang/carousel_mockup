//
//  TutorialViewController.swift
//  carousel
//
//  Created by Shunan Zhang on 10/18/15.
//  Copyright © 2015 Shunan Zhang. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var tutorialScrollView: UIScrollView!
    @IBOutlet weak var tutorialPageControl: UIPageControl!
    @IBOutlet weak var spinImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tutorialScrollView.contentSize = CGSize(width: 1280, height: 568)
        
        tutorialScrollView.delegate = self
        
        spinImageView.alpha = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(tutorialScrollView: UIScrollView) {
        
        //Get the current page based on the scroll offset
        let page : Int = Int(round(tutorialScrollView.contentOffset.x/320))
        
        // Set the current page for the dots to update
        
        if page == 3 {
            tutorialPageControl.hidden = true
            
            UIView.animateWithDuration(1, animations: { () -> Void in
                self.spinImageView.alpha = 1
            })
            
        }
        
        tutorialPageControl.currentPage = page
        
        
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
