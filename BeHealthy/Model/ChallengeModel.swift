//
//  ChallengeModel.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 11/8/21.
//

import SwiftUI

// MARK: - CHALLENGE MODEL

struct Challenge: Identifiable {
    var id = UUID()
    var image: String
    var contentInButton: String
    var contentTitle: String
    var contentDescription: [String]
}
