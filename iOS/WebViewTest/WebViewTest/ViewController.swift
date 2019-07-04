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
        
        // set up our config object
        let contentController = WKUserContentController()
        
        // add some javascript
        
        guard let scriptPath = Bundle.main.path(forResource: "script", ofType: "js"),
            let scriptSource = try? String(contentsOfFile: scriptPath) else { return }
        
        let userScript = WKUserScript(source: scriptSource, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        contentController.addUserScript(userScript)
        
        let config = WKWebViewConfiguration()
        config.userContentController = contentController
        
        let webView = WKWebView(frame: .zero, configuration: config)
        
        //let webView = WKWebView(frame: .zero)
        
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

