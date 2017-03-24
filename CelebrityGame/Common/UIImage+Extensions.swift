//
//  UIImage+Extensions.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/23/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import Foundation
import UIKit



//
extension UIImage {
    static func imageWithColor(color: UIColor) -> UIImage {
        let rect = CGRect(x:0.0, y:0.0, width:1.0, height:1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}

//    static func imageWith(color: UIColor) -> UIImage {
//        CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
//        UIGraphicsBeginImageContext(rect.size);
//        CGContextRef context = UIGraphicsGetCurrentContext();
//        
//        CGContextSetFillColorWithColor(context, [color CGColor]);
//        CGContextFillRect(context, rect);
//        
//        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();
//    
//    return image;
//    }
//}
