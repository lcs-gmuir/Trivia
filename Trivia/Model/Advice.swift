//
//  Advice.swift
//  AdviceList
//
//  Created by Samantha Stewart on 2023-04-19.


import Blackbird
import Foundation


struct Advice: Identifiable, Codable, BlackbirdModel{
    @BlackbirdColumn var advice: String
    @BlackbirdColumn var id: Int
}

let exampleAdvice = Advice(advice: "if your in a cave dont go crazy", id: 2)
