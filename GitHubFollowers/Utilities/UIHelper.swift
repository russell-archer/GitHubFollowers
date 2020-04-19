//
//  UIHelper.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 11/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import UIKit

struct UIHelper {
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        // Essentially we take the width of the screen and divide it by three.
        // However, we need to take into account the left and right insets from the edge of screen, min item spacing between
        // the three columns and the actual width of the device's screen
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth =  width - (padding * 2) - (minimumItemSpacing * 2)  // The (padding * 2) value is the combined left and right insets
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)  // The itemWidth + 40 allows for the rectangular icon + the label underneath
        
        return flowLayout
    }
}
