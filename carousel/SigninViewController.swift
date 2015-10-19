//
//  SigninViewController.swift
//  carousel
//
//  Created by Shunan Zhang on 10/18/15.
//  Copyright © 2015 Shunan Zhang. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var signinScrollView: UIScrollView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginViewWithButton: UIView!
    @IBOutlet weak var thinkingIndicator: UIActivityIndicatorView!
    
    let offset: CGFloat = -120
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        signinScrollView.delegate = self

        signinScrollView.contentSize = CGSize(width: 320, height: 600)
        
        signinScrollView.scrollEnabled = false
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func scrollViewDidEndDecelerating (signinScrollView: UIScrollView) {
        
        if signinScrollView.contentOffset.y < 50 {
            view.endEditing(true)
            
            loginViewWithButton.transform = CGAffineTransformIdentity
        }
    }
    
    
    
    @IBAction func didTapTextField(sender: AnyObject) {
        
        signinScrollView.scrollEnabled = true
        
        UIView.animateWithDuration(0.5) { () -> Void in
            self.signinScrollView.contentOffset.y = 80
        }
        
        loginViewWithButton.transform = CGAffineTransformMakeTranslation(0, offset)
        
        //loginButton.transform = CGAffineTransformMakeTranslation(loginButton.frame.origin.x, initialButtonY + offset)
    
    }
    
    
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }


    
    @IBAction func didPressButton(sender: AnyObject) {

        self.thinkingIndicator.startAnimating()
        
        if emailField.text == "tim@codepath.com" && passwordField.text == "password" {
            delay(2, closure: {() -> () in
                self.performSegueWithIdentifier("loginSegue", sender: nil)
                self.thinkingIndicator.stopAnimating()
                self.emailField.text = ""
                self.passwordField.text = ""
                })
        }else if emailField.text!.isEmpty {
                let alert = UIAlertView(title: "Email Required", message: "Please enter your email address", delegate: self, cancelButtonTitle: "OK")
                    alert.show()
                    self.thinkingIndicator.stopAnimating()

        }else {
                delay(2, closure: {() -> () in
                let alert = UIAlertView(title: "Sign In Faild", message: "Incorrect email or password", delegate: self, cancelButtonTitle: "OK")
                alert.show()
                self.thinkingIndicator.stopAnimating()
            })
            
        }
        
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
