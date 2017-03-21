//
//  GamePlayView.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit
import SnapKit

protocol GamePlayViewDelegate: class {
    func didTapSkip()
    func didTapCorrect()
}

class GamePlayView: UIView, GamePlayScoringViewDelegate, GamePlayCompleteViewDelegate {
    weak var delegate: GamePlayViewDelegate?
    private let headerView = GamePlayHeaderView()
    private let scoringView = GamePlayScoringView()
    private let roundCompleteView = GamePlayCompleteView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(headerView)
        addSubview(scoringView)
        addSubview(roundCompleteView)
        
        // Height and horizontal are ambiguous
        headerView.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalTo(self)
            // needs to be as tall as its stacked subview
        }
        
        // Horizontal is
        scoringView.snp.makeConstraints { (make) in
            make.top.equalTo(headerView.snp.bottom)
            make.bottom.leading.trailing.equalTo(self)
        }
        scoringView.delegate = self
        
        roundCompleteView.snp.makeConstraints { (make) in
            make.top.equalTo(headerView.snp.bottom)
            make.bottom.leading.trailing.equalTo(self)
        }
        roundCompleteView.delegate = self
        
        roundCompleteView.isHidden = false
        scoringView.isHidden = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - HeaderView
    func update(score: Int, teamIndex: Int) {
        headerView.update(score: score, teamIndex: teamIndex)
    }
    
    func updateTurn(teamIndex: Int) {
        headerView.updateTurn(teamIndex: teamIndex)
    }
    
    func setTimerLabel(text: String) {
        headerView.setTimerLabel(text: text)
    }
    
    // MARK: - ScoringView
    
    func updateItemView(text: String) {
        scoringView.updateItemView(text: text)
    }
    
    func updatePrompt(text: String) {
        scoringView.updatePrompt(text: text)
    }
    
    func updateSubprompt(text: String) {
        scoringView.updateSubprompt(text: text)
    }
    
    // MARK: - GamePlayScoringViewDelegate
    func didTapSkip() {
    }
    
    func didTapCorrect() {
    }
    
    // MARK: - GamePlayScoringViewDelegate
    func didTapContinue() {
    }
}
