//
//  String+Extension.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

extension Optional where Wrapped == String {

    func orDefaultString() -> String {
        return self ?? ""
    }
}
