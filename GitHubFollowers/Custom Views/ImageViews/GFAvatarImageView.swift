//
//  GFAvatarImageView.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 10/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {
    let placeholderImage = Images.placeholder

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true  // Ensures the image is rounded
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
