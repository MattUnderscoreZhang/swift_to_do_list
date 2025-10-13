//
//  ContentView.swift
//  ToDoList
//
//  Created by Matt Zhang on 10/13/25.
//

import SwiftUI
import Supabase

let client = SupabaseClient(supabaseURL: URL(string: "https://lrpfahnvmcuhhkpqhsnj.supabase.co")!, supabaseKey: "publishable-or-anon-key")

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
