//
//  GFError.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 10/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername    = "Username created an invalid request. Try again."
    case unableToComplete   = "Unable to complete request."
    case invalidResponse    = "Invalid response."
    case invalidData        = "The data received was invalid."
    case decodeError        = "Unable to decode JSON"
}
