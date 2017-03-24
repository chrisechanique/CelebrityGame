//
//  BorderedButton.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit

class BorderedButton: Button {
    
    private var ogColor: UIColor
    
    required init(title: String, textColor: UIColor, backgroundColor: UIColor, borderColor: UIColor? = nil, size: CGFloat = Constants.defaultFontSize) {
        ogColor = backgroundColor
        super.init(title: title, size: size)
        layer.cornerRadius = 12
        layer.borderWidth = 3
        titleLabel?.textAlignment = .center
        self.backgroundColor = backgroundColor
        setTitleColor(textColor, for: .normal)
        setImage(UIImage.imageWithColor(color: backgroundColor.darker()!), for: .highlighted)
        
        if let borderColor = borderColor {
            layer.borderColor = borderColor.cgColor
        } else {
            layer.borderColor = textColor.cgColor
        }
        
        clipsToBounds = true
        contentEdgeInsets = UIEdgeInsetsMake(8, 20, 8, 20)
    }
    
//    override var isHighlighted: Bool {
//        didSet {
//            switch isHighlighted {
//            case true:
//                backgroundColor = backgroundColor?.darker()
//            case false:
//                backgroundColor = ogColor
//            }
//        }
//    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init(title: String) {
        fatalError("init(title:) has not been implemented")
    }
    
    required init(title: String, size: CGFloat) {
        fatalError("init(title:size:) has not been implemented")
    }
}
