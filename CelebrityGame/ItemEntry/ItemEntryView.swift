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
    
    let label = UILabel()
    let textField = UITextField()
    let backButton = UIButton(type: .system)
    
    init() {
        super.init(frame: .zero)
        addSubview(label)
        addSubview(textField)
        addSubview(backButton)
        
        label.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.top.equalTo(self.snp.top).offset(20)
        }
        label.text = "Enter an item"
        
        textField.placeholder = "Barbra Streisand"
        textField.textColor = .blue
        textField.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.top.equalTo(label).offset(10)
        }
        
        backButton.addTarget(self, action: #selector(ItemEntryView.didTapBack), for:.touchUpInside)
        backButton.setTitle("Back", for: .normal)
        backButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(label)
            make.leading.equalTo(self).inset(20)
        }
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    func didTapBack() {
        delegate?.didTapBack()
    }
}
