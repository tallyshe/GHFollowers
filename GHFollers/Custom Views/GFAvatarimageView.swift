//
//  GFAvatarimageView.swift
//  GHFollers
//
//  Created by Kar Ho She on 31/7/2020.
//  Copyright © 2020 Kar Ho She. All rights reserved.
//

import UIKit

class GFAvatarimageView: UIImageView {
    
    let placeholderImage = UIImage(systemName: "avatar-placeholder")!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius  = 10
        clipsToBounds       = true
        image               = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
