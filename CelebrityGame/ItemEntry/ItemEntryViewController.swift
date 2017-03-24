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

class ItemEntryViewController: UIViewController, HeaderViewDelegate, ItemEntryViewDelegate, ItemEntryCompleteViewDelegate {
    
    let headerView = ItemEntryHeaderView(frame: .zero)
    let itemEntryView = ItemEntryView(frame: .zero)
    let itemEntryCompleteView = ItemEntryCompleteView(frame: .zero)
    
    weak var delegate: ItemEntryViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(headerView)
        headerView.delegate = self
        headerView.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalTo(view)
            make.height.equalTo(80)
        }
        headerView.set(progress: 0)
        
        
        view.addSubview(itemEntryView)
        itemEntryView.delegate = self
        itemEntryView.snp.makeConstraints { (make) in
            make.top.equalTo(headerView.snp.bottom)
            make.leading.trailing.bottom.equalTo(view)
        }
        //itemEntryView.isHidden = true
        
        view.addSubview(itemEntryCompleteView)
        itemEntryCompleteView.delegate = self
        itemEntryCompleteView.snp.makeConstraints { (make) in
            make.top.equalTo(headerView.snp.bottom)
            make.leading.trailing.bottom.equalTo(view)
        }
        itemEntryCompleteView.isHidden = true
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
 
