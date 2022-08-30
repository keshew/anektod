//
//  twopart.swift
//  anektod
//
//  Created by Артём Коротков on 29.08.2022.
//

import Foundation

// MARK: - TwoPart
struct TwoPart: Codable {
    let error: Bool?
    let category, type, setup, delivery: String?
    let flags: FlagsTwoPart?
    let id: Int?
    let safe: Bool?
    let lang: String?
}

// MARK: - Flags
struct FlagsTwoPart: Codable {
    let nsfw, religious, political, racist: Bool?
    let sexist, explicit: Bool?
}


typealias TwoParts = [TwoPart]

