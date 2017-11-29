//
//  SourceViewController.swift
//  iCatchUp
//
//  Created by Hugo on 20/11/17.
//  Copyright © 2017 UPC. All rights reserved.
//

import UIKit
import AlamofireImage

class SourceViewController: UIViewController {
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var source: Source? {
        didSet {
            if let currentSource = source {
                print("Has a Source: \(currentSource.name)")
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateValues(fromSource: source!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateValues(fromSource source: Source) {
        
            print("Has a Source: \(source.name)")
            nameLabel.text = source.name
            if let url = URL(string: source.urlToLogo()) {
                logoImageView.af_setImage(withURL: url)
            }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
