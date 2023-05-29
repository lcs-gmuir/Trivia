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
                        Label("Advice", systemImage: "square.and.pencil.circle.fill")
                        
                    }
                SavedAdvice()
                    .tabItem{
                        Label("Saved", systemImage: "square.and.arrow.down")
                        
                    }
            }
            .environment(\.blackbirdDatabase, AppDatabase.instance)
            
        }
    }
}
