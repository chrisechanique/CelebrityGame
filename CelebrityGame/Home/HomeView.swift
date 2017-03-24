//
//  HomeView.swift
//  CelebrityGame
//
//  Created by PJ Loury on 3/16/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import Foundation
import UIKit

protocol HomeViewDelegate: class {
    func didTapNewGame()
    func didTapSettings()
}

class HomeView: UIView {
   
    weak var delegate: HomeViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let label = Label(title: "Celebrity!", textColor: UIColor.brightPurple(), size: 45)
        addSubview(label)

        label.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.top.equalTo(self).offset(50)
        }
        
        let newGameButton = BorderedButton(title: "New Game", textColor: UIColor.lightBlue(), backgroundColor: UIColor.lightPurple(), borderColor: UIColor.darkPurple())
        addSubview(newGameButton)
        let settingsButton = BorderedButton(title: "Settings", textColor: UIColor.lightBlue(), backgroundColor: UIColor.lightPurple(), borderColor: UIColor.darkPurple())
        addSubview(settingsButton)
        backgroundColor = .white
        
        newGameButton.addTarget(self, action: #selector(HomeView.didTapNewGame), for: .touchUpInside)
        settingsButton.addTarget(self, action: #selector(HomeView.didTapSettings), for: .touchUpInside)
        
        newGameButton.snp.makeConstraints { (make) in
            make.width.equalTo(200)
            make.centerY.equalTo(self)//.offset(-50)
            //make.top.equalTo(label.snp.bottom).offset(20)
            make.centerX.equalTo(self)
            make.height.equalTo(50)
        }
        
        settingsButton.snp.makeConstraints { (make) in
            make.width.equalTo(newGameButton.snp.width)
            make.centerX.equalTo(self)
            //make.centerY.equalTo(self).offset(50)
            make.top.equalTo(newGameButton.snp.bottom).offset(30)
            make.height.equalTo(newGameButton.snp.height)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func didTapNewGame() {
        delegate?.didTapNewGame()
    }
    
    func didTapSettings() {
        delegate?.didTapSettings()
    }
}
