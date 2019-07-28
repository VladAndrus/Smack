//
//  GradientView.swift
//  Smack
//
//  Created by Влад on 7/27/19.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet{
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet{
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
            let gradietLayer = CAGradientLayer()
        gradietLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradietLayer.startPoint = CGPoint(x: 0, y: 0)
        gradietLayer.endPoint = CGPoint(x: 1, y: 1)
        gradietLayer.frame = self.bounds
        self.layer.insertSublayer(gradietLayer, at: 0)
    }
    

}
