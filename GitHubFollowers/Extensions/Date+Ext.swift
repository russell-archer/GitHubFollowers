//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 19/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
