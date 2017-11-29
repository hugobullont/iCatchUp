//
//  NewsApiService.swift
//  iCatchUp
//
//  Created by Hugo on 9/11/17.
//  Copyright © 2017 UPC. All rights reserved.
//

import Foundation

class NewsApiService {
    static let sourcesUrl = "https://newsapi.org/v1/sources"
    
    static func articlesUrl(apiKey:String, sourceId:String) -> String {
        return "https://newsapi.org/v1/articles?source=\(sourceId)&apiKey=\(apiKey)"
    }
}
