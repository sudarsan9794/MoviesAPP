//
//  cornerRadiusView.swift
//  MoviesApp
//
//  Created by sudarsan on 11/17/17.
//  Copyright © 2017 sudarsan. All rights reserved.
//

import UIKit

class cornerRadiusView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
    layer.cornerRadius = 5.0
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.8
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        layer.shadowRadius = 5.0

    }

}
