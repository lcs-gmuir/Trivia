//
//  Advice.swift
//  AdviceList
//
//  Created by Samantha Stewart on 2023-04-19.
//


import Foundation


struct Advice: Identifiable, Codable {
    let  advice: String
    let id: Int
}

let exampleAdvice = Advice(advice: "if your in a cave dont go crazy", id: 2)
