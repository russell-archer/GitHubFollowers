//
//  GFTitleLabel.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 08/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import UIKit

class GFTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
      
    required init?(coder: NSCoder) { fatalError("This initializer requires a storyboard") }
    
    init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        // Note that we do NOT want to use dynamic type for a title label, hence
        // we allow setting the font size
        
        super.init(frame: .zero)
        
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        
        configure()
    }

    private func configure() {
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9  // 90%
        lineBreakMode = .byTruncatingTail  // Causes text that's too long to be truncated with "..."
        translatesAutoresizingMaskIntoConstraints = false
    }
}
