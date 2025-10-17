//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Matt Zhang on 10/13/25.
//

import SwiftUI
import Supabase

let supakey = Bundle.main.object(forInfoDictionaryKey: "SUPABASE_KEY") as! String
let supaclient = SupabaseClient(supabaseURL: URL(string: "https://lrpfahnvmcuhhkpqhsnj.supabase.co")!, supabaseKey: supakey)

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                MainView()
                    .onOpenURL {
                        url in supaclient.auth.handle(url)  // handles Supabase auth redirects
                    }
            }
        }
    }
}
