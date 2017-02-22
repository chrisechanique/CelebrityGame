//
//  RootRouter.swift
//  CelebrityGame
//
//  Created by PJ Loury on 1/28/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import Foundation
import UIKit

/*
class RootRouter {
    
    var interactor: RootInteractor
    var viewController: RootViewController
    
    init(interactor: Interactor<RootI, viewController: UIViewController) {
        self.interactor = interactor
        self.viewController = viewController
        self.interactor.router = self
    }
    
    func routeToHome() {
        let builder = HomeBuilder()
        let homeRouter = builder.build()
        viewController.transitionToViewController(viewController: homeRouter.viewController)
        
        guard let homeInteractor = homeRouter.interactor as? HomeRouter
            homeInteractor.listener = interactor
            else { return }
        homeRouter.interactor.listener = interactor
    }
    
    
}
*/
