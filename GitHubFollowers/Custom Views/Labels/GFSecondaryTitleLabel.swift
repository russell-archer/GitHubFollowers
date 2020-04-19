//
//  GFSecondaryTitleLabel.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 14/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
      
    required init?(coder: NSCoder) { fatalError("This initializer requires a storyboard") }
    
    init(fontSize: CGFloat) {
        // Note that we want our body label to support dynamic type
        super.init(frame: .zero)
        
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        configure()
    }

    private func configure() {
        textColor = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
