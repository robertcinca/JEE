//
//  LastVisitedViewController.swift
//  JEE
//
//  Created by UCL on 3/19/15.
//  Copyright (c) 2015 UCL. All rights reserved.
//

import UIKit

class LastVisitedViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(false)
        loadPage()
    }
    
    @IBAction func loadPage() { //help from http://makeapppie.com/2014/10/28/swift-swift-using-uiwebviews-in-swift/
        if ((mostRecentLocation == "Gaby's Deli Jewish Food") || (mostRecentLocation == "North Sea Fish Restaurant"))
        {
            mostRecentLocation = "Eating Jewish in and Around Bloomsbury";
        }
        if ((mostRecentLocation == "Joseph's Bookstore ") || (mostRecentLocation == "Charing Cross Road Bookstores") || (mostRecentLocation == "Owl Bookshop ") || (mostRecentLocation == "Pages of Hackney Bookshop"))
        {
            mostRecentLocation = "Jewish and Jewish Friendly bookshops";
        }
        if ((mostRecentLocation == "Karl Marx Highgate Cemetary") || (mostRecentLocation == "Chimen Abramsky Dartmouth Park") || (mostRecentLocation == "Warburg Institute London") || (mostRecentLocation == "Zionist Organisation Headquarters"))
        {
            mostRecentLocation = "Other areas of Jewish Interest";
        }
        if ((mostRecentLocation == "The Blind Beggar Pub") || (mostRecentLocation == "Daniel Mendoza's House"))
        {
            mostRecentLocation = "Sport Boxing";
        }
        let myURL = Bundle.main.url(forResource: mostRecentLocation, withExtension: "html")
        let requestObj = URLRequest(url: myURL!)
        webView.loadRequest(requestObj)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ WebView: UIWebView,
        shouldStartLoadWith request: URLRequest,
        navigationType: UIWebViewNavigationType) -> Bool {
            let requestURL = request.url
            if ( requestURL?.scheme == "http" && navigationType == UIWebViewNavigationType.linkClicked ) {
                return UIApplication.shared.openURL(requestURL!)
            }
            return true
    }

}
