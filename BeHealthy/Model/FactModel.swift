//
//  FactModel.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 7/8/21.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
