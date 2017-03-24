//
//  ItemEntryCompleteView.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit

protocol ItemEntryCompleteViewDelegate: class {
    func didTapContinue()
    func didTapAnotherSet()
}

class ItemEntryCompleteView: UIView {

    weak var delegate: ItemEntryCompleteViewDelegate?
    let caption = Label(title: "All Set!", textColor: UIColor.lightBlue())
    let cta = BorderedButton(title: "Let's Play!", textColor: UIColor.lightBlue(), backgroundColor: UIColor.lightPurple(), borderColor: UIColor.darkPurple())
    let anotherSetButton = BorderedButton(title: "Another Set", textColor: UIColor.lightBlue(), backgroundColor: UIColor.lightPurple())
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(caption)
        addSubview(cta)
        addSubview(anotherSetButton)
        backgroundColor = .white
        caption.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.bottom.equalTo(cta.snp.top).offset(-40)
        }
        
        cta.snp.makeConstraints { (make) in
            make.center.equalTo(self)
        }
        
        anotherSetButton.snp.makeConstraints { (make) in
            make.trailing.bottom.equalTo(self).inset(20)
        }
        
        cta.addTarget(self, action: #selector(ItemEntryCompleteView.didTapContinue), for:.touchUpInside)
        anotherSetButton.addTarget(self, action: #selector(ItemEntryCompleteView.didTapAnotherSet), for:.touchUpInside)
    }
    
    func didTapContinue() {
        delegate?.didTapContinue()
    }
    
    func didTapAnotherSet() {
        delegate?.didTapAnotherSet()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
