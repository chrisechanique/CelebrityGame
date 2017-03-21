//
//  Label.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit

class Label: UILabel {
    
    required init(frame: CGRect = .zero, title: String? = nil, textColor: UIColor = UIColor.darkPurple(), size: CGFloat = 24.0) {
        super.init(frame: frame)
        text = title
        font = UIFont.defaultFont(size: size)
        self.textColor = textColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
