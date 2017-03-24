//
//  GamePlayViewController.swift
//  CelebrityGame
//
//  Created by PJ Loury on 1/28/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import UIKit
import SnapKit

class GamePlayViewController: UIViewController, GamePlayViewDelegate {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        let gamePlayView = GamePlayView(frame: view.frame)
        view.addSubview(gamePlayView)
    }
    
    // MARK: - GamePlayScoringViewDelegate
    func didTapSkip() {
        
    }
    
    func didTapCorrect() {
        
    }
    
    func didTapContinue() {
        
    }
}
