//
//  MyHStack.swift
//  SwiftUI-Stack
//
//  Created by Jeongwan Kim on 2022/07/17.
//

import SwiftUI

struct MyHStack: View {
    var body: some View {
        HStack(alignment: .center) {
            
//            Divider()
            
//            Rectangle()
//                .frame(width: 100)
//                .foregroundColor(.red)
            
            Image(systemName: "flame.fill")
                .foregroundColor(.white)
                .font(.system(size: 70))
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
        } //HStack
        .padding()
        .background(.green)
    }
}

struct MyHStack_Previews: PreviewProvider {
    static var previews: some View {
        MyHStack()
    }
}
