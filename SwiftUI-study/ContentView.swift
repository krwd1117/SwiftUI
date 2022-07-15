//
//  ContentView.swift
//  SwiftUI-study
//
//  Created by Jeongwan Kim on 2022/07/15.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    MyStackView()
                    MyStackView()
                    MyStackView()
                } //Hstack
                    .padding(isActivated ? 50 : 10)
                    .background( isActivated ? .yellow : .black )
                    .onTapGesture {
                        print("출력 됐다")
                        withAnimation {
                            self.isActivated.toggle() // true/false 반전
                        }
                    }
                
                NavigationLink {
                    // 목적지
                    MyTextView()
                } label: {
                    // 들어갈 텍스트
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 30))
                        .padding(10)
                        .background(.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
