//
//  UITableView+Ext.swift
//  GHFollers
//
//  Created by Kar Ho She on 3/11/2020.
//  Copyright © 2020 Kar Ho She. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
