//
//  single.swift
//  anektod
//
//  Created by Артём Коротков on 29.08.2022.
//

import Foundation

// MARK: - Single
struct Single: Codable {
    let error: Bool?
    let category, type, joke: String?
    let flags: FlagsSingle?
    let id: Int?
    let safe: Bool?
    let lang: String?
}

// MARK: - Flags
struct FlagsSingle: Codable {
    let nsfw, religious, political, racist: Bool?
    let sexist, explicit: Bool?
}

typealias Singles = [Single]
