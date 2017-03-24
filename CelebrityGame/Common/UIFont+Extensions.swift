//
//  UIFont+Extensions.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    static func defaultFont(size: CGFloat = Constants.defaultFontSize) -> UIFont {
        //return UIFont(name: "Helvetica", size: size)!
        return UIFont(name :".SFUIText-Semibold", size: size)!
    }
}
