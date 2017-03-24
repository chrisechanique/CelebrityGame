//
//  GamePlayCompleteView.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit
import SnapKit

protocol GamePlayCompleteViewDelegate: class {
    func didTapContinue()
}

class GamePlayCompleteView: UIView {
    
    weak var delegate: GamePlayCompleteViewDelegate?
    
    private let centerLabel = Label(title: "Round Complete!", textColor: UIColor.lightBlue())
    private let continueButton = BorderedButton(title: "Next Round", textColor: UIColor.darkPurple(), backgroundColor: UIColor.lightPurple())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(centerLabel)
        addSubview(continueButton)
        
        continueButton.addTarget(self, action: #selector(GamePlayCompleteView.didTapContinue), for: .touchUpInside)
        
        centerLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).inset(40)
            make.centerX.equalTo(self)
        }
        
        continueButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.bottom.equalTo(self).inset(50)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func didTapContinue() {
        
    }
}
