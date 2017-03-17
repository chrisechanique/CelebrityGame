//
//  BorderedButton.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit

class BorderedButton: Button {
    
    required init(title: String, primaryColor: UIColor, secondaryColor: UIColor, size: CGFloat = 24) {
        super.init(title: title, size: size)
        layer.cornerRadius = 6
        layer.borderWidth = 4
        backgroundColor = primaryColor
        setTitleColor(secondaryColor, for: .normal)
        layer.borderColor = secondaryColor.cgColor
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
}
