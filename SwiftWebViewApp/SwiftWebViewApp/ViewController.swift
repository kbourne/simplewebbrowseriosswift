//
//  ViewController.swift
//  SwiftWebViewApp
//
//  Created by Keith Bourne on 5/1/15.
//  Copyright (c) 2015 Appervasive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "http://www.keithbourne.com/")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    
    @IBAction func doRefresh(sender: AnyObject) {
        webView.reload()
    }
    
    @IBAction func stopLoad(sender: AnyObject) {
        webView.stopLoading()
    }
    
    @IBAction func goBack(sender: AnyObject) {
        webView.goBack()
    }
    
    @IBAction func goForward(sender: AnyObject) {
        webView.goForward()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

