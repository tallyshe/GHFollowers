//
//  FollowerListVC.swift
//  GHFollers
//
//  Created by Kar Ho She on 19/7/2020.
//  Copyright © 2020 Kar Ho She. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
