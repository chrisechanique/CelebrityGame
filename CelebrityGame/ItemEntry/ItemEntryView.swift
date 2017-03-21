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

class ItemEntryView: UIView, HeaderViewDelegate {
    
    weak var delegate: ItemEntryViewDelegate?
    
    private let label = Label(title: "Enter An Item")
    private let textField = TextField(placeholder: "Barbra Streisand")
    
    let headerView = ItemEntryHeaderView(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(headerView)
        addSubview(label)
        addSubview(textField)
        
        headerView.delegate = self
        headerView.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalTo(self)
            make.height.equalTo(80)
        }
        
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
        
        textField.becomeFirstResponder()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        textField.layer.cornerRadius = textField.frame.height/2
    }
    
    // MARK: - HeaderViewDelegate
    func didTapBack() {
        textField.resignFirstResponder()
        delegate?.didTapBack()
    }
    
    // MARK: - Public
    func set(progress: Int) {
        headerView.set(progress)
    }
    
}
