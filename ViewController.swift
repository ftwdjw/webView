//
//  ViewController.swift
//  webView2
//
//  Created by John Mac on 11/2/16.
//  Copyright © 2016 John Wetters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func goBack(_ sender: Any) {
        webView.goBack()
    }
    
    
    @IBAction func goForward(_ sender: Any) {
        webView.goForward()
    }
    
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL (string: "http://www.wsj.com/");
        let requestObj = NSURLRequest(url: url! as URL);
        webView.loadRequest(requestObj as URLRequest);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

