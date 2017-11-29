//
//  ClearbitLogoApiService.swift
//  iCatchUp
//
//  Created by Hugo on 13/11/17.
//  Copyright © 2017 UPC. All rights reserved.
//

import Foundation

class ClearbitLogoApiService {
    static let logoBaseUrl = "https://logo.clearbit.com/"
    
    static func uriToLogo(forUrl urlString: String) -> String {
        if let url = URL(string: urlString) {
            return "\(logoBaseUrl)\(url.host ?? urlString)"
        }
        return urlString
    }
}
