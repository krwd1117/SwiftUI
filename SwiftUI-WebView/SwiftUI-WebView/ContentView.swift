//
//  ContentView.swift
//  SwiftUI-WebView
//
//  Created by Jeongwan Kim on 2022/07/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            HStack {
                NavigationLink {
                    MyWebView(urlToLoad: "https://www.naver.com")
                        .edgesIgnoringSafeArea(.all)
                } label: {
                    Text("네이버")
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                        .padding(10)
                        .background(.green)
                        .cornerRadius(10)
                }
                NavigationLink {
                    MyWebView(urlToLoad: "https://www.google.com")
                        .edgesIgnoringSafeArea(.all)
                } label: {
                    Text("구글")
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                        .padding(10)
                        .background(.yellow)
                        .cornerRadius(10)
                }
                NavigationLink {
                    MyWebView(urlToLoad: "https://www.daum.net")
                        .edgesIgnoringSafeArea(.all)
                } label: {
                    Text("다음")
                        .foregroundColor(.green)
                        .fontWeight(.bold)
                        .padding(10)
                        .background(.blue)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
