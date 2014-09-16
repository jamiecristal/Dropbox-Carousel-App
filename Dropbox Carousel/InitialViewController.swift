//
//  InitialViewController.swift
//  Dropbox Carousel
//
//  Created by Jamie Cristal on 9/15/14.
//  Copyright (c) 2014 Jamie Cristal. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var inital: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        inital.contentSize = CGSize(width: 320, height: 1720)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
