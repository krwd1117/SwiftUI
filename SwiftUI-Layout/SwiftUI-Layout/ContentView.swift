//
//  ContentView.swift
//  SwiftUI-Layout
//
//  Created by Jeongwan Kim on 2022/07/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        NavigationLink {
                            MyList(isNavigationBarHidden: self.$isNavigationBarHidden)
                        } label: {
                            Image(systemName: "line.horizontal.3")
                                .font(.system(.largeTitle))
                                .foregroundColor(.black)
                        }
                        Spacer()
                        Image(systemName: "person.crop.circle.fill")
                            .font(.system(.largeTitle))
                    } // HStack 네비게이션 바
                    .padding(.vertical, 20)
                    
                    Text("정대리 할 일 목록")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                    
                    ScrollView {
                        VStack {
                            MyProjectCard()
                            MyBasicCard(title: "유튭 라이브 버닝", icon: "flame.fill", time: "8 PM - 10 PM", backgroundColor: .purple)
                            MyBasicCard(title: "마트 장보기", icon: "tv.fill", time: "8 PM - 10 PM", backgroundColor: .red)
                            MyBasicCard(title: "영상 다시보기", icon: "cart.fill", time: "8 PM - 10 PM", backgroundColor: .blue)
                            MyBasicCard(title: "히오스 한판하기", icon: "gamecontroller.fill", time: "8 PM - 10 PM", backgroundColor: .orange)
                        } // VStack
                    } // ScrollView
                } // VStack
                .padding(.horizontal ,10)
                .padding(.top, 20)
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(10)
                    .shadow(radius: 20)
            } // ZStack
            
            .navigationTitle("메인")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear { // 보여지게 될때
                // 그냥 true를 해버리면 다른 화면에서도 네비게이션바가 사라짐
                self.isNavigationBarHidden = true
            }
            
        } // NavigationLink

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
