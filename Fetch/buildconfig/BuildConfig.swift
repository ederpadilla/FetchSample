//
//  BuildConfig.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

class BuildConfig {
    
    static let environment: URL = {
        let strURL = Bundle.main.infoDictionary?["ENVIRONMENT_URL"] as? String
        return URL(safeString: strURL.orDefaultString())
    }()
}
