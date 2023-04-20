//
//  Wisdom.swift
//  Advice
//
//  Created by calum couch on 2023-04-19.
//
import Blackbird
import Foundation


struct Advice: Codable {
    let slip: Slip

}

struct Slip: Identifiable, Codable {
   @BlackbirdColumn var id: Int
    @BlackbirdColumn var advice: String
}

let exampleAdvice = Advice(slip: Slip(id: 10, advice:"The more tiems you try the more times you'll fail get used to it"))
