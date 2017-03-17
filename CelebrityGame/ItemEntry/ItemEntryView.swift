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
    
    let label = Label(title: "Enter An Item")
    let textField = TextField(placeholder: "Barbra Streisand")
    let backButton = Button(title: "Back")
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubview(label)
        addSubview(textField)
        addSubview(backButton)
        
        backButton.layer.borderColor = nil
        backButton.setTitleColor(UIColor.lightBlue(), for: .normal)
        
        label.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.top.equalTo(self.snp.top).offset(20)
        }
        label.textColor = UIColor.lightBlue()
        
        textField.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.top.equalTo(label.snp.bottom).offset(10)
            make.height.equalTo(60)
        }
        
        backButton.addTarget(self, action: #selector(ItemEntryView.didTapBack), for:.touchUpInside)
        backButton.setTitle("Back", for: .normal)
        backButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(label)
            make.leading.equalTo(self).inset(20)
        }
        
        textField.becomeFirstResponder()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    func didTapBack() {
        textField.resignFirstResponder()
        delegate?.didTapBack()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        textField.layer.cornerRadius = textField.frame.height/2
    }
}
