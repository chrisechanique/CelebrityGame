//
//  GamePlayScoreboardView.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/17/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import Foundation
import UIKit

class GamePlayScoreboardView: UIStackView {
    
    init() {
        super.init(frame: .zero)
        axis = .vertical
        add(team: "1", color: UIColor.darkGreen(), score: 0)
        add(team: "2", color: UIColor.lightBlue(), score: 0)
        add(team: "3", color: UIColor.darkPurple(), score: 0)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func add(team: String, color: UIColor, score: Int) {
        let title = "Team \(team): \(String(score))"
        let teamLabel = Label(frame: CGRect(x: 0, y: 0, width: 150, height:40), title: title, textColor: color, size: 18)
        addArrangedSubview(teamLabel)
    }
    
    func update(score: Int, teamIndex: Int) {
        if teamIndex < arrangedSubviews.count {
            guard let label = arrangedSubviews[teamIndex] as? Label else { return }
            label.text = "Team \(teamIndex): \(String(score))"
        }
    }
    
    func updateTurn(teamIndex: Int) {
        // TODO
    }
}
