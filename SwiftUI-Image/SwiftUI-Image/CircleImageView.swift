//
//  CircleImageView.swift
//  SwiftUI-Image
//
//  Created by Jeongwan Kim on 2022/07/16.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 100)) // 이미지 크기
//            .foregroundColor(.gray) // 색상
//            .shadow(color: .black, radius: 2, x: 2, y: 2) // 그림자
        
        Image("myImage") // 다운받은 이미지
            .resizable()
            .aspectRatio(contentMode: .fill) // 가득 채움 == .scaledToFill()
//            .aspectRatio(contentMode: .fit) // 딱 맞게 채움 == .scaledToFit()
            .frame(width: 300, height: 300) // 이미지의 크기를 결정
//            .clipped() // 결정한 이미지의 크기만큼만 잘라냄
            .clipShape(Circle()) // 원하는 형태로 자름
//            .edgesIgnoringSafeArea(.all) // safeArea까지 다 채움
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.3) // 투명도 설정
            )
            .overlay(
                Circle()
                    .stroke(.red, lineWidth: 10) // 색상 및 두께
                    .padding()
            ) // 뷰를 덮씌움
            .overlay(
                Circle()
                    .stroke(.yellow, lineWidth: 10)
                    .padding(30)
            )
            .overlay(
                Circle()
                    .stroke(.blue, lineWidth: 10)
                )
            .overlay(
                Text("호호")
                    .foregroundColor(.white)
                    .font(.system(size: 100))
                    .fontWeight(.bold)
                    .opacity(0.5)
                )

 
        
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
