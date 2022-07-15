//
//  MyStackView.swift
//  SwiftUI-study
//
//  Created by Jeongwan Kim on 2022/07/15.
//

import SwiftUI

struct MyStackView: View {
    
    // 1. 데이터를 연동시키기 위해 바인딩을 사용한다
    @Binding
    var isActivated: Bool
    
    // 2. 생성자
    // .constant(기본 값) -> 기본 값 설정
    init(isActivated: Binding<Bool> = .constant(true)) {
        _isActivated = isActivated
    }
    
    var body: some View {
        VStack {
            Text("1")
                .fontWeight(.bold)
                .foregroundColor(.red)
                .font(.largeTitle)
            Text("2")
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .font(.largeTitle)
            Text("3")
                .fontWeight(.bold)
                .foregroundColor(.green)
                .font(.largeTitle)
        } // VStack
        .padding(self.isActivated ? 30 : 0)
        // 3. 바인딩한 데이터 사용
        .background(self.isActivated ? .green : .red)
    }
}

struct MyStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyStackView()
    }
}
