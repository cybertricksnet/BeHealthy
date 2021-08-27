//
//  IconView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 11/8/21.
//

import SwiftUI

struct IconView: View {
    
    // MARK: - PROPERTIES
    
    var article: Article
    
    var body: some View {
        HStack (alignment: .top, spacing: 8) {
            ForEach(1...(article.icon), id:\.self) { _ in
                Image(systemName: "cross.circle.fill")
                    .foregroundColor(Color("ColorMainFont"))
                Text ("\(article.warning)")
                    .font(.subheadline)
                    .foregroundColor(Color("ColorMainFont"))
            }
        }
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView(article: articleData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}

