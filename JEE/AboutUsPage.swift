//
//  SecondViewController.swift
//  JEE
//
//  Created by UCL on 3/16/15.
//  Copyright (c) 2015 UCL. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
        
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(false)
        loadAboutUs()
    }

    @IBAction func loadAboutUs() { //help from http://makeapppie.com/2014/10/28/swift-swift-using-uiwebviews-in-swift/
        let myURL = Bundle.main.url(forResource: "aboutus", withExtension: "html")
        let requestObj = URLRequest(url: myURL!)
        myWebView.loadRequest(requestObj)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
