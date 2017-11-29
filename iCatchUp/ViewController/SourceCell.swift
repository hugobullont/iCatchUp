//
//  SourceCell.swift
//  iCatchUp
//
//  Created by Hugo on 13/11/17.
//  Copyright © 2017 UPC. All rights reserved.
//

import UIKit
import AlamofireImage

class SourceCell: UICollectionViewCell {
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func updateValues(fromSource source: Source) {
        nameLabel.text = source.name
        if let url = URL(string: source.urlToLogo()) {
            logoImageView.af_setImage(withURL: url)
        }
    }
}
