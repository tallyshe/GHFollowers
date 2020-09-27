//
//  UserInfoVC.swift
//  GHFollers
//
//  Created by Kar Ho She on 26/9/2020.
//  Copyright © 2020 Kar Ho She. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        print(username!)
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }

}
