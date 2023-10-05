//
//  String+Extension.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

extension String {
    
    static let empty = ""
    
    func trim() -> String {
        trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
    
    func isNotEmpty() -> Bool {
        !trim().isEmpty
    }
}

extension Optional where Wrapped == String {
    
    func orDefaultString() -> String {
        return self ?? .empty
    }
}
