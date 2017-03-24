//
//  ItemEntryView.swift
//  CelebrityGame
//
//  Created by PJ Loury on 1/29/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import Foundation
import UIKit
import SnapKit


protocol ItemEntryViewDelegate: class {
    func didTapBack()
}

class ItemEntryView: UIView {
    
    weak var delegate: ItemEntryViewDelegate?
    
    private let label = Label(title: "Enter An Item", size: 34)
    private let textField = TextField(placeholder: "Barbra Streisand")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(label)
        addSubview(textField)
        
        label.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.top.equalTo(self.snp.top)
        }
        label.textColor = UIColor.lightBlue()
    
        textField.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.centerY.equalTo(self).inset(-60)//.snp.bottom).offset(20)
            make.leading.equalTo(self.snp.leading).inset(180)
            make.height.equalTo(65)
        }
        
        textField.textAlignment = .center
        textField.autocorrectionType = .no
        textField.becomeFirstResponder()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        textField.layer.cornerRadius = textField.frame.height/2
    }
    
    func resignTextField() {
        textField.resignFirstResponder()
    }
        
}
