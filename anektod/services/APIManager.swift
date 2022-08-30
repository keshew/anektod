//
//  APIManager.swift
//  anektod
//
//  Created by Артём Коротков on 29.08.2022.
//

import Foundation

enum APIType {
    case single
    case twopart
    
    
    var baseURL: String {
        return "https://v2.jokeapi.dev/joke/"
    }
    
    var path: String {
        switch self {
        case .single:  return "Programming,Dark?type=single"
        case .twopart: return "Programming,Dark?type=twopart"
        }
    }
    
    var request: URLRequest {
        let url = URL(string: path, relativeTo: URL(string: baseURL)!)!
        let request = URLRequest(url: url)
        return request
        
    }
}

class APIManager {
    
    
    static let shared = APIManager()

    func singleJoke(completion: @escaping (Single) -> Void) {
        let request = APIType.single.request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let jokeSingle = try? JSONDecoder().decode(Single.self, from: data) {
                completion(jokeSingle)
            } else {
                print(error!)
            }
        }
        task.resume()
    }
    
    
  
    func twoPartJoke(completion: @escaping (TwoPart) -> Void) {
        let request = APIType.twopart.request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let jokeTwoPart = try? JSONDecoder().decode(TwoPart.self, from: data) {
                completion(jokeTwoPart)
            } else {
                print(error!)
            }
        }
        task.resume()
    }


    
    
    
    
    
    
}
