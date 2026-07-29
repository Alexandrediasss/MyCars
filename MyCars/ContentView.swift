//
//  ContentView.swift
//  MyCars
//
//  Created by Carlos Alexandre Dias Messias de Lima on 29/07/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            MyCarsView()
                .tabItem {
                    Label("Cars", systemImage: "car")
                        .tint(Color.primary)
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .tint(Color("primaryColor"))
    }
}

#Preview {
    ContentView()
}
