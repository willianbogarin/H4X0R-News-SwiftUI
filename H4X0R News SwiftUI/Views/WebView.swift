//
//  WebView.swift
//  H4X0R News SwiftUI
//
//  Created by Willian Bogarin Jr on 2023. 08. 03..
//

import SwiftUI
import Foundation
import WebKit


#if os(macOS)
    public typealias ViewRepresentable = NSViewRepresentable
#elseif os(iOS)
public typealias ViewRepresentable = UIViewRepresentable
#endif

struct Webview: ViewRepresentable {
    
    let urlString: String?
    
    func makeNSView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                nsView.load(request)
            }
            
            func updateUIView(_ uiView: WKWebView, context: Context) {
                if let safeString = urlString {
                    if let url = URL(string: safeString){
                        let request = URLRequest(url: url)
                        uiView.load(request)
                    }
                    
                    
                }
            }
        }
        
    }
}
