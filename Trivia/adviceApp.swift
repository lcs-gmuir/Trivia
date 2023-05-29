//
//  TriviaApp.swift
//  Trivia
//
//  Created by Samantha Stewart on 2023-04-20.
//

import SwiftUI

@main
struct TriviaApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                AdviceView()
                    .tabItem{
                        Label("Advice", systemImage: "person.crop.circle.fill.badge.checkmark")
                        
                    }
                AdviceView()
                    .tabItem{
                        Label("Saved", systemImage: "star.fill")
                        
                    }
            }
            .environment(\.blackbirdDatabase, AppDatabase.instance)
            
        }
    }
}
