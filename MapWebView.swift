//
//  MapWebView.swift
//  Hackdavis22
//
//  Created by Leonardo Redivo on 4/17/22.
//

import SwiftUI
import WebKit

struct MapWebView: UIViewRepresentable{
    
    

    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView{
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let myURL = url else{
            return
        }
        let request = URLRequest(url: myURL)
        uiView.load(request)
    }
}
