//
//  GFRepoItemVC.swift
//  GHFollers
//
//  Created by Kar Ho She on 5/10/2020.
//  Copyright © 2020 Kar Ho She. All rights reserved.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems(){
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgoundColor: .systemPurple, title: "GitHub Profile")
    }
}
