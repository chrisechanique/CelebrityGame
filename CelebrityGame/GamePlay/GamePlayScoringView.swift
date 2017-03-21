//
//  GamePlayScoringView.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/17/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit
import Foundation

protocol GamePlayScoringViewDelegate: class {
    func didTapSkip()
    func didTapCorrect()
}

class GamePlayScoringView: UIView {
    weak var delegate: GamePlayScoringViewDelegate?
    private let promptLabel = Label(title: "Describe:")
    private let itemLabel = BorderedLabel(title: "Charlie Brown", textColor: UIColor.lightBlue(), backgroundColor: UIColor.lightPurple(), borderColor: UIColor.darkPurple())
    private let subpromptLabel = Label(title: "Without saying it!", textColor: UIColor.darkGray())
    private let correctButton = BorderedButton(title: "Correct!", textColor: UIColor.darkGreen(), backgroundColor: UIColor.lightGreen())
    private let skipButton = BorderedButton(title: "Skip", textColor: UIColor.darkYellow(), backgroundColor: UIColor.lightYellow())
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubview(promptLabel)
        addSubview(itemLabel)
        addSubview(subpromptLabel)
        addSubview(correctButton)
        addSubview(skipButton)
        
        itemLabel.lineBreakMode = .byWordWrapping
        itemLabel.numberOfLines = 2
        
        itemLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.snp.top).inset(10)
            make.height.equalTo(75)
            make.leading.equalTo(self.snp.centerX).offset(20)
        }
                
        promptLabel.snp.makeConstraints { (make) in
            make.centerY.equalTo(itemLabel.snp.centerY)
            make.trailing.equalTo(self.snp.centerX).offset(-20)
        }
        
        subpromptLabel.snp.makeConstraints { (make) in
            make.top.equalTo(itemLabel.snp.bottom).offset(15)
            make.centerX.equalTo(self)
        }
        
        correctButton.snp.makeConstraints { (make) in
            make.bottom.trailing.equalTo(self).inset(30)
        }
        
        skipButton.snp.makeConstraints { (make) in
            make.bottom.leading.equalTo(self).inset(30)
        }
        skipButton.contentEdgeInsets = UIEdgeInsetsMake(8, 40, 8, 40)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateItemView(text: String) {
        itemLabel.text = text
    }
    
    func updatePrompt(text: String) {
        promptLabel.text = text
    }
    
    func updateSubprompt(text: String) {
        subpromptLabel.text = text
    }
}
