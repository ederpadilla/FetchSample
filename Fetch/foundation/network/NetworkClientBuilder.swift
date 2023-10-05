//
//  NetworkClientBuilder.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

extension URLSession {
    
    func fetch<T: Decodable>(endopoint: String, completion: @escaping (Result<T, Error>) -> Void) { // TODO: Add better error handling for no internet, status code != 200
        guard let url = URL(string: BuildConfig.environment.description + endopoint) else {
            completion(.failure(NetworkError.invalidURL))
            return
        }
        
        let task = dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let decodedData = try decoder.decode(T.self, from: data)
                    completion(.success(decodedData))
                } catch {
                    completion(.failure(NetworkError.invalidData))
                }
            }
        }
        
        task.resume()
    }
}

enum NetworkError: Error {
    case invalidURL
    case invalidData
}
