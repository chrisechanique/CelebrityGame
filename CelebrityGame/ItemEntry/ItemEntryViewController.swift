//
//  ItemEntryViewController.swift
//  CelebrityGame
//
//  Created by PJ Loury on 1/28/17.
//  Copyright © 2017 Chris and PJ Games. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

protocol ItemEntryViewControllerDelegate: class {
    func didTapBack()
}

class ItemEntryViewController: UIViewController, ItemEntryViewDelegate, ItemEntryCompleteViewDelegate {
    
    weak var delegate: ItemEntryViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemEntryView = ItemEntryView(frame: view.frame)
        itemEntryView.delegate = self
        view.addSubview(itemEntryView)
        itemEntryView.set(progress: 0)
    }
    // MARK: - ItemEntryViewDelegate
    func didTapBack() {
        delegate?.didTapBack()
    }
    
    // MARK: - ItemEntryCompleteViewDelegate
    func didTapContinue() {
        
    }
    
    func didTapAnotherSet() {
        
    }
}
 
