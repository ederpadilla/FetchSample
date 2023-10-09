//
//  String+Extension.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

extension String {
    
    static let empty = ""
    static let whitespace = " "
    
    func trim() -> String {
        trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
    
    func isNotEmpty() -> Bool {
        !trim().isEmpty
    }
    
    func capitalizeFirstLetterOfEachWord() -> String {
        let words = self.components(separatedBy: .whitespaces)
        let capitalizedWords = words.map { $0.prefix(.one).uppercased() + $0.dropFirst() }
        return capitalizedWords.joined(separator: .whitespace)
    }
}

extension Optional where Wrapped == String {
    
    func orDefaultString() -> String {
        return self ?? .empty
    }
}
