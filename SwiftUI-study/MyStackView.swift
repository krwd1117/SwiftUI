//
//  MyStackView.swift
//  SwiftUI-study
//
//  Created by Jeongwan Kim on 2022/07/15.
//

import SwiftUI

struct MyStackView: View {
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
        .padding(30)
        .background(.gray)
        
    }
}

struct MyStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyStackView()
    }
}
