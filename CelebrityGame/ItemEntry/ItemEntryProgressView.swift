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
    private let progressStackView = UIStackView(frame: .zero)
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(progressLabel)
        addSubview(progressImageView)
        addSubview(progressStackView)
        backgroundColor = .white
        progressStackView.axis = .horizontal
        progressStackView.distribution = .equalCentering
        
        for _ in 1...5 {
            progressStackView.addArrangedSubview(ItemProgressIndicatorView())
        }
       
        progressLabel.snp.makeConstraints { (make) in
            make.center.equalTo(self)
        }
        progressImageView.snp.makeConstraints { (make) in
            make.center.equalTo(self)
        }
        
        progressStackView.snp.makeConstraints { (make) in
            make.edges.equalTo(self)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public
    func set(_ progress: Int) {
        progressLabel.text = String(progress)
        for (index, view) in progressStackView.arrangedSubviews.enumerated() {
            let indicatorView = view as! ItemProgressIndicatorView
            let active = index < progress
            indicatorView.active = active
        }
    }
    
    /*
    override var intrinsicContentSize: CGSize{
        return CGSize(width:250, height: 50)
    }
    */
}
