//
//  MyWebView.swift
//  SwiftUI-Image
//
//  Created by Jeongwan Kim on 2022/07/17.
//

import SwiftUI
import WebKit


struct MyWebView: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: Context) -> some WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        let urlRequest = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(urlRequest)
        return wkWebView
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(url: "https://www.naver.com")
    }
}


