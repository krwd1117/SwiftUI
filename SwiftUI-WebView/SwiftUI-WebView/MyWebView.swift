//
//  MyWebView.swift
//  SwiftUI-WebView
//
//  Created by Jeongwan Kim on 2022/07/16.
//

import SwiftUI
import WebKit

// 1. UIViewRepresentable 상속받기
struct MyWebView: UIViewRepresentable {
    
    var urlToLoad: String
    
    // 2. UIView 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    
    // 3. Update UIView
    // state가 바뀌면 UIView를 다시 그리기 위해 필요함
    // UIViewRepresentable를 상속받으면 자동으로 만들어 줌
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
    
}

struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://wwww.naver.com")
    }
}
