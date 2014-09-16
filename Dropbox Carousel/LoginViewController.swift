//
//  LoginViewController.swift
//  Dropbox Carousel
//
//  Created by Jamie Cristal on 9/15/14.
//  Copyright (c) 2014 Jamie Cristal. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var login: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }
    @IBAction func onLoginButton(sender: AnyObject) {
        
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
        delay(2, closure: { () -> () in
           
            if ((self.emailField.text != "jamie@mail.com" && self.emailField.text != "") || (self.passwordField.text != "pass" && self.passwordField.text != "")){
                UIAlertView(title: "Oops", message: "Wrong email or password!", delegate: nil, cancelButtonTitle: "OK").show()
            } else if (self.emailField.text == "" || self.passwordField.text == ""){
                 UIAlertView(title: "Oops", message: "Looks empty to me", delegate: nil, cancelButtonTitle: "Yup").show()
            }else{
                self.performSegueWithIdentifier("loginSegue", sender: self)
            }
            
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func keyboardWillShow(notification: NSNotification!) {
        
    login.contentInset=UIEdgeInsets(top: -90, left: 0, bottom: 0, right: 0)
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
