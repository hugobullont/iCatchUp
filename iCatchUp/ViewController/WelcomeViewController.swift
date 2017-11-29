//
//  WelcomeViewController.swift
//  iCatchUp
//
//  Created by Hugo on 9/11/17.
//  Copyright © 2017 UPC. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        testNetworking()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func testNetworking() {
        Alamofire.request(NewsApiService.sourcesUrl)
        .responseJSON(completionHandler: {
            response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("\(json)")
                let sources = Source.from(jsonSources: json["sources"].arrayValue)
                let count = sources.count
                let settings = SettingsStore()
                print("\(settings.newsApiKey)")
            case .failure(let error):
                print("\(error)")
            }
        })
    }

}

