//
//  HeaderView.swift
//  ToDoList
//
//  Created by Matt Zhang on 10/15/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.pink)
                .rotationEffect(Angle(degrees: 15))
            VStack {
                Text("To Do List")
                    .foregroundStyle(.white)
                    .font(.system(size:50))
                    .bold()
                Text("Get things done")
                    .foregroundStyle(.white)
                    .font(.system(size:30))
                    .bold()
            }
                .padding(.top, 30)
        }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
