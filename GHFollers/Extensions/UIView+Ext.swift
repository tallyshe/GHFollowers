//
//  UIView+Ext.swift
//  GHFollers
//
//  Created by Kar Ho She on 29/10/2020.
//  Copyright © 2020 Kar Ho She. All rights reserved.
//

import UIKit

extension UIView {
    
    func pinToEdges(of superview: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
    }
    
    func addSubViews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
