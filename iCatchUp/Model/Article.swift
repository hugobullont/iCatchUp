//
//  Article.swift
//  iCatchUp
//
//  Created by Hugo on 9/11/17.
//  Copyright © 2017 UPC. All rights reserved.
//

import Foundation
import SwiftyJSON

class Article {
    var author: String
    var description: String
    var title: String
    var url: String
    var urlToImage: String
    var publishedAt: String
    var source: Source
    
    init() {
        author = ""
        description = ""
        title = ""
        url = ""
        urlToImage = ""
        publishedAt = ""
        source = Source()
    }
    
    init(from jsonArticle:JSON, source objectSource:Source) {
        author = jsonArticle["author"].stringValue
        description = jsonArticle["description"].stringValue
        title = jsonArticle["title"].stringValue
        url = jsonArticle["url"].stringValue
        urlToImage = jsonArticle["urlToImage"].stringValue
        publishedAt = jsonArticle["publishedAt"].stringValue
        source = objectSource
    }
    
    static func from(jsonArticles: [JSON], source objectSource:Source) -> [Article] {
        var articles: [Article] = []
        let count = jsonArticles.count
        for i in 0...count - 1 {
            articles.append(Article.init(from: jsonArticles[i], source: objectSource))
        }
        return articles
    }
    
    
}
