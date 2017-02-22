//
//  HomeBuilder.swift
//  CelebrityGame
//
//  Created by PJ Loury on 1/28/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import Foundation

class HomeBuilder: Buildable {
    
    
    
    func build() -> Router {
        let viewController = HomeViewController()
        let interactor = HomeInteractor(viewController: viewController)
        viewController.listener = interactor
        return HomeRouter(interactor: interactor)
    }
}
