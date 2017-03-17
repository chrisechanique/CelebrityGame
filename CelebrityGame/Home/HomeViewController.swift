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

class HomeViewController: UIViewController, HomeViewDelegate {
    
    weak var delegate: HomeViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let homeView = HomeView()
        view.addSubview(homeView)
        
        homeView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        homeView.delegate = self
    }
        
    func didTapNewGame() {
        delegate?.didTapNewGame()
    }
        
    func didTapSettings() {
        delegate?.didTapNewGame()
    }
}
