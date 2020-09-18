//
//  GFAvatarimageView.swift
//  GHFollers
//
//  Created by Kar Ho She on 31/7/2020.
//  Copyright © 2020 Kar Ho She. All rights reserved.
//

import UIKit

class GFAvatarimageView: UIImageView {
    
    let cashe               = NetworkManager.shared.cashe
    let placeholderImage    = UIImage(named: "avatar-placeholder")!
    
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
    
    
    func downloadImage(from urlString: String) {
        
        let casheKey = NSString(string: urlString)
        
        if let image = cashe.object(forKey: casheKey){
            self.image = image
            return
        }
        
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let self = self else { return }
            if error != nil {return}
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { return }
            guard let data = data else {return}
            
            guard let image = UIImage(data: data) else { return }
            self.cashe.setObject(image, forKey: casheKey)
            
            DispatchQueue.main.async { self.image = image }
        }
        
        task.resume()
    }
}
