//
//  HeaderView.swift
//  ToDoList
//
//  Created by Matt Zhang on 10/15/25.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                    .font(.system(size:50))
                    .bold()
                Text(subtitle)
                    .foregroundStyle(.white)
                    .font(.system(size:30))
                    .bold()
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

#Preview {
    VStack {
        HeaderView(
            title: "Title",
            subtitle: "Subtitle",
            angle: 15,
            background: .blue
        )
        Spacer()
    }
}
