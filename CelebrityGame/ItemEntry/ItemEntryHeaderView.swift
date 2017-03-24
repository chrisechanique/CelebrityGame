//
//  ItemEntryHeaderView.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit
import SnapKit

protocol HeaderViewDelegate: class {
    func didTapBack()
}

class ItemEntryHeaderView: UIView {
    weak var delegate: HeaderViewDelegate?
    private let setsLabel = Label(title: "Sets: 0")
    private let progressView = ItemEntryProgressView(frame: .zero)
    private let backButton = Button(title: "<")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(backButton)
        addSubview(setsLabel)
        addSubview(progressView)
        
        backButton.snp.makeConstraints { (make) in
            make.leading.equalTo(self)
            make.centerY.equalTo(progressView.snp.centerY)
        }
        backButton.setTitleColor(UIColor.lightBlue(), for: .normal)
        backButton.addTarget(self, action: #selector(ItemEntryHeaderView.didTapBack), for:.touchUpInside)
        
        setsLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(backButton.snp.trailing).offset(30)
            make.centerY.equalTo(progressView.snp.centerY)
        }
        
        progressView.snp.makeConstraints { (make) in
            make.trailing.equalTo(self).inset(18)
            make.top.equalTo(self).inset(18)
            make.height.equalTo(Constants.indicatorDiameter)
            make.width.equalTo(180)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func didTapBack() {
        delegate?.didTapBack()
    }
    
    // MARK: - Public
    func set(progress: Int) {
        progressView.set(progress)
    }
}

