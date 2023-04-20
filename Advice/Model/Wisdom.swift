//
//  Wisdom.swift
//  Advice
//
//  Created by calum couch on 2023-04-19.
//

import Foundation


struct Advice: Codable {
    let slip: Slip

}

struct Slip: Identifiable, Codable {
    let id: Int
    let advice: String
}

let exampleAdvice = Advice(slip: Slip(id: 10, advice:"The more tiems you try the more times you'll fail get used to it"))
