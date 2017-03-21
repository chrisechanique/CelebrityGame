//
//  RootViewController.swift
//  CelebrityGame
//
//  Created by PJ Loury on 1/28/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class RootViewController: UIViewController, HomeViewControllerDelegate, ItemEntryViewControllerDelegate {
    
    var child: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let homeViewController = HomeViewController()
        addNewChild(viewController: homeViewController)
        homeViewController.delegate = self
        child = homeViewController
    }
    
    private func addNewChild(viewController: UIViewController) {
        addChildViewController(viewController)
        view.addSubview(viewController.view)
        viewController.didMove(toParentViewController: self)
    }
    
    private func removePreviousChild() {
        child?.willMove(toParentViewController: nil)
        child?.view.removeFromSuperview()
        child?.removeFromParentViewController()
    }
    
    func didTapNewGame() {
        removePreviousChild()
//        let gamePlayViewController = GamePlayViewController()
//        addNewChild(viewController: gamePlayViewController)
        let itemEntryViewController = ItemEntryViewController()
        addNewChild(viewController: itemEntryViewController)
        itemEntryViewController.delegate = self
    }
    
    func didTapBack() {
        removePreviousChild()
        let homeViewController = HomeViewController()
        addNewChild(viewController: homeViewController)
        homeViewController.delegate = self
        child = homeViewController
    }
}
