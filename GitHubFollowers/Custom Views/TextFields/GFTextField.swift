//
//  GFTextField.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 06/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = .label
        tintColor = .label  // The cursor
        textAlignment = .center
        
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true  // Shrink font size if required to fit all text into field
        minimumFontSize = 12  // Don't shrink too much!

        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        placeholder = "Enter a username"
        
        // Configure what the Return key does for the username text field
        returnKeyType = .go  // The return key for the keyboard belonging to this text field will display "Go"
        
        // We now need to set up a UITextFieldDelegate in our SearchVC
    }
}
