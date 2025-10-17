//
//  TDLButton.swift
//  ToDoList
//
//  Created by Matt Zhang on 10/16/25.
//

import SwiftUI

struct TDLButton: View {
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(color)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TDLButton(
        title: "Button",
        color: .red
    ) {
        // do nothing
    }
}
