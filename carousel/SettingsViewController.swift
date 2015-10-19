//
//  SettingsViewController.swift
//  carousel
//
//  Created by Shunan Zhang on 10/18/15.
//  Copyright © 2015 Shunan Zhang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var signOutButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        settingsScrollView.contentSize = CGSize(width: 320, height: 695)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressButton(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Are you sure you want to sign out?", message: "", preferredStyle: .ActionSheet)
        
        // create a cancel action
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // handle cancel response here. Doing nothing will dismiss the view.
        }
        
        // add the cancel action to the alertController
        alertController.addAction(cancelAction)
        
        // create an OK action
        let signoutAction = UIAlertAction(title: "Sign Out", style: .Destructive) { (action) in
            self.performSegueWithIdentifier("logoutSegue", sender: nil)

            // handle response here.
        }
        
        // add the OK action to the alert controller
        alertController.addAction(signoutAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
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
