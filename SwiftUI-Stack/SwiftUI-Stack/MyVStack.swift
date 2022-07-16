//
//  MyVStack.swift
//  SwiftUI-Stack
//
//  Created by Jeongwan Kim on 2022/07/17.
//

import UIKit
import SwiftUI

struct MyVSyack: View {
    
    var fontSize: CGFloat = 30
    
    var rectangleWidth: CGFloat = 100
    var rectangleHeight: CGFloat = 100
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) { // spacing은 인터페이스들의 간격
            
            Text("글자")
                .font(.system(size: fontSize))
                .fontWeight(.heavy)
            
            //            Divider()
            //                .opacity(0) // 살짝 보이는 Divider의 테두리 숨김
            
            //            Rectangle()
            //                .frame(height: 0)
            
            Rectangle() // 기본 값이 화면 전체를 다 채운다.
                .frame(width: rectangleWidth, height: rectangleHeight)
                .foregroundColor(.red)
            
            Rectangle() // 기본 값이 화면 전체를 다 채운다.
                .frame(width: rectangleWidth, height: rectangleHeight)
                .foregroundColor(.yellow)
            
            Spacer()
                .frame(height: 30)
            
            Rectangle() // 기본 값이 화면 전체를 다 채운다.
                .frame(width: rectangleWidth, height: rectangleHeight)
                .foregroundColor(.blue)
            
        } // VStack
        .frame(width: 300)
        .background(.green)
        //        .edgesIgnoringSafeArea(.all)
    }
}

struct MyVSyack_Previews: PreviewProvider {
    static var previews: some View {
        MyVSyack()
    }
}
