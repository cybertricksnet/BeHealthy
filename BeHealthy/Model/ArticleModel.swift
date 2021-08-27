//
//  ArticleModel.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 10/8/21.
//

import SwiftUI

// MARK: - ARTICLE MODEL

struct Article: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var icon: Int
    var iconSecond: Int
    var warning: String
    var timer: String
    var fourth: [String]
    var fifth: [String]
    var sixth: [String]
}


