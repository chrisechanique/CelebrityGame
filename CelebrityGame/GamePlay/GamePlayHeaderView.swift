//
//  GamePlayHeaderView.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit
import SnapKit

class GamePlayHeaderView: UIView {

    private let scoreboardView = GamePlayScoreboardView()
    private let timerLabel = Label(title: "Ready?")
    
    init() {
        super.init(frame:.zero)
        backgroundColor = .white
        addSubview(scoreboardView)
        scoreboardView.snp.makeConstraints { make in
            make.leading.equalTo(self).inset(10)
            make.top.equalTo(self).inset(20)
        }
        addSubview(timerLabel)
        timerLabel.snp.makeConstraints { make in
            make.top.equalTo(self).inset(20)
            make.trailing.equalTo(self).inset(40)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public
    
    func update(score: Int, teamIndex: Int) {
        scoreboardView.update(score: score, teamIndex: teamIndex)
    }
    
    func updateTurn(teamIndex: Int) {
        scoreboardView.updateTurn(teamIndex: teamIndex)
    }
    
    func setTimerLabel(text: String) {
        timerLabel.text = text
    }
    
    override var intrinsicContentSize: CGSize{
        return CGSize(width:frame.size.width , height: 100)
    }
}

