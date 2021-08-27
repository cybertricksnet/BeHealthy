//
//  IconSecondView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 15/8/21.
//

import SwiftUI

struct IconSecondView: View {
    
    // MARK: - PROPERTIES
    
    var article: Article
    
    var body: some View {
        HStack (alignment: .center, spacing: 8) {
            ForEach(1...(article.iconSecond), id:\.self) { _ in
                Image(systemName: "clock.fill")
                    .foregroundColor(Color("ColorMainFont"))
                Text ("Read: \(article.timer)")
                    .font(.subheadline)
                    .foregroundColor(Color("ColorMainFont"))
            }
        }
    }
}

struct IconSecondView_Previews: PreviewProvider {
    static var previews: some View {
        IconSecondView(article: articleData[0])
    }
}
