//
//  NetworkManager.swift
//  onlineShop
//
//  Created by  on 5/2/24.
//

import Foundation
import WeatherKit

class NetworkManager {

    static let shared = NetworkManager()
    
    private let baseUrl = "https://fakestoreapi.com/products"
    
    func getProducts() async throws -> [Divisa]{
        guard let completeUrl =  URL(string: baseUrl ) else {
            throw WError.invalidURL
        }
        
        let(data, response) = try await URLSession.shared.data(from: completeUrl)
       
        do{
            let decoder = JSONDecoder()
            return try decoder.decode([Divisa].self, from: data)
        }catch{
            throw WError.invalidURL
        }
    }
}
