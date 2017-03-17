//
//  HomeButton.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import Foundation
import UIKit

class HomeButton: Button {
    
    required init(title: String) {
        super.init(title: title)
        self.backgroundColor = UIColor.lightPurple()
        self.layer.borderColor = UIColor.darkPurple().cgColor
        self.setTitleColor(UIColor.lightBlue(), for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init(title: String, size: CGFloat) {
        fatalError("init(title:size:) has not been implemented")
    }
}
