//
//  Wisdom.swift
//  Advice
//
//  Created by calum couch on 2023-04-19.
//
import Blackbird
import Foundation


struct Advice: Identifiable, Codable, BlackbirdModel {
    @BlackbirdColumn var id: Int
    @BlackbirdColumn var advice: String
}

struct Slip: Codable {
    var slip: Advice
}


let exampleAdvice = Advice(id: 10, advice:"The more tiems you try the more times you'll fail get used to it")
