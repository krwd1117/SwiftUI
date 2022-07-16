//
//  MyZStack.swift
//  SwiftUI-Stack
//
//  Created by Jeongwan Kim on 2022/07/17.
//

import SwiftUI

struct MyZStack: View {
    var body: some View {
        ZStack {
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                // zIndex가 높을수록 상위 계층이 된다.
                // zIndex가 없는 경우의 디폴트는 0
                .zIndex(1)
            
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(.yellow)
                .opacity(0.7)
                .zIndex(2)
            
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)
                .opacity(0.5)
                .zIndex(3)
            
        }
    }
}

struct MyZStack_Previews: PreviewProvider {
    static var previews: some View {
        MyZStack()
    }
}
