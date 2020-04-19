//
//  String+Ext.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 19/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import Foundation

extension String {
    
    func convertToDate() -> Date? {
        let dateFormatter = DateFormatter()  // See https://nsdateformatter.com for help with formats
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"  // This is the format we get back from the GitHub API
        dateFormatter.locale = .current
        dateFormatter.timeZone = .current
        
        return dateFormatter.date(from: self)
    }
    
    func convertToDisplayFormat() -> String {
        guard let date = self.convertToDate() else { return "N/A" }
        return date.convertToMonthYearFormat()
    }
}
