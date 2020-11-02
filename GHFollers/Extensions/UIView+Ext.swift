//
//  UIView+Ext.swift
//  GHFollers
//
//  Created by Kar Ho She on 29/10/2020.
//  Copyright © 2020 Kar Ho She. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubViews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
