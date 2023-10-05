//
//  NetworkClientBuilder.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

extension URLSession {
    
    func fetch<T: Decodable>(endopoint: String) async throws -> T { // TODO: Add better error handling for no internet, status code != 200
        guard let url = URL(string: BuildConfig.environment.description + endopoint) else {
            throw NetworkError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.noInternetConnection
        }
        
        guard httpResponse.statusCode == NetworkError.successCode else {
            throw NetworkError.invalidStatusCode
        }
        
        do {
            let decoder = JSONDecoder()
            let responseDecoded = try decoder.decode(T.self, from: data)
            return responseDecoded
        } catch {
            throw NetworkError.invalidResponse
        }
    }
}

enum NetworkError: Error {
    static let successCode = 200
    case invalidURL
    case invalidResponse
    case invalidStatusCode
    case noInternetConnection
}
