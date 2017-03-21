//
//  BorderedLabel.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/17/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit

class BorderedLabel: Label {
    
    required init(title: String, textColor: UIColor, backgroundColor: UIColor, borderColor: UIColor? = nil, size: CGFloat = 24) {
        super.init(title: title, textColor: textColor, size: size)
        layer.cornerRadius = 12
        layer.borderWidth = 3
        textAlignment = .center
        clipsToBounds = true
        self.backgroundColor = backgroundColor
        if let borderColor = borderColor {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init(title: String) {
        fatalError("init(title:) has not been implemented")
    }
    
    required init(title: String, size: CGFloat) {
        fatalError("init(title:size:) has not been implemented")
    }
    
    required init(title: String?, textColor: UIColor, size: CGFloat) {
        fatalError("init(title:textColor:size:) has not been implemented")
    }
    
    required init(frame: CGRect, title: String?, textColor: UIColor, size: CGFloat) {
        fatalError("init(frame:title:textColor:size:) has not been implemented")
    }
}
