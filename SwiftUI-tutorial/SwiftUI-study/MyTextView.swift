//
//  MyTextView.swift
//  SwiftUI-study
//
//  Created by Jeongwan Kim on 2022/07/15.
//

import SwiftUI

struct MyTextView: View {
    
    // 1. 데이터를 연동시키기 위해 바인딩을 사용한다
    @Binding
    var isActivated: Bool
    
    // 2. 생성자
    // .constant(기본 값) -> 기본 값 설정
    init(isActivated: Binding<Bool> = .constant(true)) {
        _isActivated = isActivated
    }
    
    @State
    private var index: Int = 0
    
    private let backgroundColorsArray = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity)
            //                .frame(minHeight: 0, maxHeight: .infinity)
            Spacer()
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? .yellow : .gray)
                .background(.black)
            Spacer()
        } // VStack
        .background(backgroundColorsArray[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            withAnimation {
                print("배경 아이템이 클릭 됨")
                if self.index == self.backgroundColorsArray.count - 1 {
                    self.index = 0
                } else {
                    self.index += 1
                }
            }
        }
    }
    
}

struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
