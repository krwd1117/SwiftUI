//
//  ContentView.swift
//  SwiftUI-Text
//
//  Created by Jeongwan Kim on 2022/07/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let dateFormat: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "YYYY년 M월 d일"
            return formatter
        }()
        
        var today = Date()
        
        VStack {
            Text("n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.")
                .font(.system(.body, design: .rounded))
                .tracking(5) // 자간
                .fontWeight(.bold) // 글자 굵기
                .multilineTextAlignment(.center) // 글자 정렬
                .lineLimit(2) // 글자 줄 수 제한
                .padding() // 여백
                .background(.yellow) // 배경 색상
                .cornerRadius(20) // 모서리 둥글게
                .lineSpacing(10) // 행간
                .shadow(color: .red, radius: 7, x: 5, y: 5) // 그림자
                .padding()
            
            Text("안녕하세요")
                .background(.gray)
                .foregroundColor(.white)
            
            Text("오늘의 날짜입니다 : \(today, formatter: dateFormat)")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
