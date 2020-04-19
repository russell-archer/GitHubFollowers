//
//  GFButton.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 06/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    /// This initializer is called when the button is created from a storyboard.
    /// As we're not using storyboards in this project we won't properly implement it.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// Custom initializer to allow setting background color and title
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)  // We want our button to have white text independent of light/dark mode
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)  // Use text styles to support dynamic type
        translatesAutoresizingMaskIntoConstraints = false  // Turn constraints OFF as we'll be using auto layout
    }
    
    func set(backgroundColor: UIColor, title: String) {
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }
}
