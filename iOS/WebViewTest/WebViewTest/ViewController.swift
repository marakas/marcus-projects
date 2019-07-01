//
//  ViewController.swift
//  WebViewTest
//
//  Created by Saw, Marcus | Marcus | ISSD on 2019/06/28.
//  Copyright © 2019 Saw, Marcus | Marcus | ISSD. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let webView = WKWebView(frame: .zero)
        
        view.addSubview(webView)
        
        let layoutGuide = view.safeAreaLayoutGuide
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor).isActive = true
        webView.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor).isActive = true
        webView.topAnchor.constraint(equalTo: layoutGuide.topAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor).isActive = true
        
        if let url = URL(string: "https://marcusstorage.z11.web.core.windows.net/index.htm") {
            webView.load(URLRequest(url: url))
        }
    }


}

