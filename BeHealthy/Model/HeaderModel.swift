//
//  HeaderModel.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 10/8/21.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable{
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
