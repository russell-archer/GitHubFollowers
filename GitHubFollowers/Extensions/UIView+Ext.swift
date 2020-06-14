//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 28/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import UIKit

extension UIView {
    // Variadic param
    func addSubviews(_ views: UIView...) {
        views.forEach { view in addSubview(view) }
    }
    
    func pinToEdges(of superview: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
    }
}
