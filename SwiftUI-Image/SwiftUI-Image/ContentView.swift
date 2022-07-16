//
//  ContentView.swift
//  SwiftUI-Image
//
//  Created by Jeongwan Kim on 2022/07/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Image("myImage")
                    .frame(height: 10)
                    .offset(y: -700)
                CircleImageView()
                HStack {
                    NavigationLink {
                        MyWebView(url: "https://www.naver.com")
                            .edgesIgnoringSafeArea(.all)
                    } label: {
                        Text("네이버 진입하기")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding(10)
                            .background(.red)
                            .cornerRadius(20)
                    }
                    NavigationLink {
                        MyWebView(url: "https://www.daum.net")
                    } label: {
                        Text("다음 진입하기")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding(10)
                            .background(.orange)
                            .cornerRadius(20)
                    }
                } // HStack
                    .padding(.top, 30)
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
