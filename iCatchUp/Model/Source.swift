//
//  Source.swift
//  iCatchUp
//
//  Created by Hugo on 9/11/17.
//  Copyright © 2017 UPC. All rights reserved.
//

import Foundation
import SwiftyJSON

class Source {
    var name: String
    var id: String
    var description: String
    var url: String
    var language: String
    var country: String
    var sortBysAvailable: [String]
    
    init() {
        name = ""
        id = ""
        description = ""
        url = ""
        language = ""
        country = ""
        sortBysAvailable = []
    }
    
    init(from jsonSource:JSON) {
        name = jsonSource["name"].stringValue
        id = jsonSource["id"].stringValue
        description = jsonSource["description"].stringValue
        url = jsonSource["url"].stringValue
        language = jsonSource["language"].stringValue
        country = jsonSource["country"].stringValue
        sortBysAvailable = jsonSource["sortBysAvailable"].arrayObject as! [String]
    }
    
    func urlToLogo() -> String {
        return ClearbitLogoApiService.uriToLogo(forUrl: url)
    }
    
    static func from(jsonSources: [JSON]) -> [Source] {
        var sources: [Source] = []
        let count = jsonSources.count
        for i in 0...count - 1 {
            sources.append(Source.init(from: jsonSources[i]))
        }
        return sources
    }
}
