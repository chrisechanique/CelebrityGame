//
//  ItemProgressIndicatorView.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/23/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit

class ItemProgressIndicatorView: UIView {

    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        layer.borderColor = UIColor.darkPurple().cgColor
        layer.borderWidth = 3
        clipsToBounds = true
        layer.cornerRadius = Constants.indicatorDiameter/2
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var active: Bool = false {
        didSet {
            if active {
                backgroundColor = UIColor.lightPurple()
            } else {
                backgroundColor = .white
            }
        }
    }
    
    override var intrinsicContentSize: CGSize{
        return CGSize(width:Constants.indicatorDiameter, height:Constants.indicatorDiameter)
    }
    
}
