//
//  ContentView.swift
//  ToDoList
//
//  Created by Matt Zhang on 10/13/25.
//

import SwiftUI
import Supabase

let supakey = Bundle.main.object(forInfoDictionaryKey: "SUPABASE_KEY") as! String
let client = SupabaseClient(supabaseURL: URL(string: "https://lrpfahnvmcuhhkpqhsnj.supabase.co")!, supabaseKey: supakey)

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
