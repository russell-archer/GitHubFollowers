//
//  GFBodyLabel.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 08/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import UIKit

class GFBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment) {
        // Note that we want our body label to support dynamic type
        self.init(frame: .zero)
        self.textAlignment = textAlignment
    }

    private func configure() {
        textColor = .secondaryLabel
        font = UIFont.preferredFont(forTextStyle: .body)  // Dynamic type
        adjustsFontForContentSizeCategory = true // Dynamic type on
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.75  // 75%
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }
}
