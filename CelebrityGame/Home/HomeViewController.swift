//
//  HomeViewController.swift
//  CelebrityGame
//
//  Created by PJ Loury on 1/28/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

protocol HomeViewControllerDelegate: class {
    func didTapNewGame()
}

class HomeViewController: UIViewController {
    
    weak var delegate: HomeViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let newGameButton = UIButton(type: .system)
        newGameButton.setTitle("New Game", for: .normal)
        view.addSubview(newGameButton)
        view.backgroundColor = .green
        newGameButton.snp.makeConstraints { make in
            make.center.equalTo(view)
        }
        newGameButton.addTarget(self, action: "didTapNewGame", for: .touchUpInside)
    }
    
    func didTapNewGame() {
        delegate?.didTapNewGame()
    }
}
