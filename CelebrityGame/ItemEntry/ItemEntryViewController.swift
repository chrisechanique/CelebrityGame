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

class ItemEntryViewController: UIViewController, ItemEntryViewDelegate {
    
    weak var delegate: ItemEntryViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemEntryView = ItemEntryView()
        itemEntryView.delegate = self
        view.addSubview(itemEntryView)
        itemEntryView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
    }
        
    func didTapBack() {
        delegate?.didTapBack()
    }
}
