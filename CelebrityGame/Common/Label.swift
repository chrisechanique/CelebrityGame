//
//  Label.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit

class Label: UILabel {
    
    required init(title: String) {
        super.init(frame: .zero)
        text = title
        font = UIFont.defaultFont()
        textColor = UIColor.darkPurple()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
