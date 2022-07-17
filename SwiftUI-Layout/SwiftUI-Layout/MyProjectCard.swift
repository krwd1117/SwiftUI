//
//  MyProjectCard.swift
//  SwiftUI-Layout
//
//  Created by Jeongwan Kim on 2022/07/17.
//

import SwiftUI

struct MyProjectCard: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("정대리 유튭 프로젝트")
                .font(.system(size: 23))
                .fontWeight(.black)
            Spacer()
                .frame(height: 10)
            Text("10 AM - 11 AM")
                .foregroundColor(.secondary)
            Spacer()
                .frame(height: 20)
            HStack {
                Image("image1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(
                        Circle()
                    )
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 3)
                            .foregroundColor(.red)
                    )
                Image("image2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("image3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Spacer()
                Text("확인")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 80)
                    .background(.blue)
                    .cornerRadius(10)
            }
        } // VStack
        .padding(30)
        .background(.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
