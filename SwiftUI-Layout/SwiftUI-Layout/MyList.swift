//
//  MyList.swift
//  SwiftUI-Layout
//
//  Created by Jeongwan Kim on 2022/07/19.
//

import SwiftUI

struct MyList: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    // .constant => 기본 값 설정
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        _isNavigationBarHidden = isNavigationBarHidden
    }
    

    var body: some View {
//        List {
//            Text("MyList")
//            Text("MyList")
//            Text("MyList")
//            Text("MyList")
//            Text("MyList")
//        }
        
//        List {
//            ForEach(1...10, id: \.self) {
//                Text("MyList \($0)")
//            }
//        }
        
//        List {
//            ForEach(1...10, id: \.self) { itemIndex in
//                Text("MyList \(itemIndex)")
//            }
//        }
        
        List {
            Section {
                ForEach(1...3, id: \.self) { itemIndex in
                    MyBasicCard(title: "책읽기", icon: "book.fill", time: "1PM ~ 3PM", backgroundColor: .green)}
            } header: {
                Text("헤더")
            } footer: {
                Text("푸터")
            } // Section
            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)) // 리스트 각 요소의 바깥 여백
            .listRowBackground(Color.yellow)
            
            
            Section {
                ForEach(1...3, id: \.self) { itemIndex in
                    MyBasicCard(title: "책읽기", icon: "book.fill", time: "1PM ~ 3PM", backgroundColor: .blue)}
            } header: {
                Text("헤더")
            } footer: {
                Text("푸터")
            }
            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)) // 리스트 각 요소의 바깥 여백
            
        } // List
        .listStyle(.grouped) // 리스트 스타일
        .navigationTitle("내 목록")
        .onAppear { // 보여지게 될때
            // 그냥 true를 해버리면 다른 화면에서도 네비게이션바가 사라짐
            self.isNavigationBarHidden = false
        }
        
    } // NavigationView
    
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
