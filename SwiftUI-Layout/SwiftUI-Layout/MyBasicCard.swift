//
//  MyBasicCard.swift
//  SwiftUI-Layout
//
//  Created by Jeongwan Kim on 2022/07/17.
//

import SwiftUI

struct MyBasicCard: View {
    
    @State var title: String
    @State var icon: String
    @State var time: String
    @State var backgroundColor: Color

    init(title: String, icon: String, time: String, backgroundColor: Color) {
        self.title = title
        self.icon = icon
        self.time = time
        self.backgroundColor = backgroundColor
    }
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "\(icon)")
                .font(.system(size:40))
                .foregroundColor(.white)
            VStack(alignment: .leading) {
                Divider()
                    .opacity(0)
                Text("\(title)")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                Spacer()
                    .frame(height: 5)
                Text("\(time)")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
            }
        } // HStack
        .padding()
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard(title: "유튭 라이브 버닝", icon: "flame.fill", time: "8 PM - 10 PM", backgroundColor: .purple)
    }
}
