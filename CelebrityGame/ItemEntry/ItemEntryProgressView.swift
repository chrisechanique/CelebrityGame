//
//  ItemEntryProgressView.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/17/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit

class ItemEntryProgressView: UIView {
    private let progressLabel = Label()
    private let progressImageView = UIImageView(image: nil)
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(progressLabel)
        addSubview(progressImageView)
        backgroundColor = .gray
        
        progressLabel.snp.makeConstraints { (make) in
            make.center.equalTo(self)
        }
        progressImageView.snp.makeConstraints { (make) in
            make.center.equalTo(self)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public
    func set(_ progress: Int) {
        progressLabel.text = String(progress)
    }
}
