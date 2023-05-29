//
//  SavedAdvice.swift
//  Trivia
//
//  Created by Samantha Stewart on 2023-05-28.
//
import Blackbird
import SwiftUI

struct SavedAdvice: View {
    
    @BlackbirdLiveModels({ db in
        try await Advice.read(from: db)
    }) var adviceList
    
    var body: some View {
        
        NavigationView{
            List(adviceList.results) {currentAdvice in
                VStack(alignment: .leading) {
                    Text(currentAdvice.advice)
                        .bold()
                }
            }
        }
    }
}
