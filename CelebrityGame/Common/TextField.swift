//
//  TextField.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import Foundation
import UIKit

class TextField: UITextField {
    
    let padding = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20);
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    required init(placeholder: String, size: CGFloat = Constants.defaultFontSize) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        font = UIFont.defaultFont(size: size)
        layer.borderWidth = 4
        layer.borderColor = UIColor.darkPurple().cgColor
        backgroundColor = UIColor.lightPurple()
        textColor = UIColor.lightBlue()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
