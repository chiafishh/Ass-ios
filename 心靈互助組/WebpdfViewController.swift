//
//  WebpdfViewController.swift
//  心靈互助組
//
//  Created by User04 on 2019/3/8.
//  Copyright © 2019 Chiafishh. All rights reserved.
//

import UIKit
import WebKit

class WebpdfViewController: UIViewController {
    @IBOutlet var web: WKWebView!
    let urlp = URL(string: "prePdf.pdf")
    override func viewDidLoad() {
        super.viewDidLoad()
        //web.navigationDelegate = self
        web.load(URLRequest(url: URL(fileURLWithPath: "https://www.google.com")))//URL(string: "http://") for web URL
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
