//
//  ArticleCardView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 10/8/21.
//

import SwiftUI

struct ArticleCardView: View {
    
    // MARK: - PROPERTIES
    
    var article: Article
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            // MARK: - IMAGE
            
            Image(article.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color("ColorMainFont"))
                                .imageScale(.small)
                                .padding(.trailing, 20)
                                .padding(.top, 22)

                            Spacer()
                        }
                    }
                )
            VStack(alignment: .leading, spacing: 15) {
                
                // MARK: - TITLE
                
                Text(article.title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorMainFont"))
                    .lineLimit(1)

                // MARK: - HEADLINE
                
                Text(article.headline)
                    .font(.system(.subheadline, design: .rounded))
                    .foregroundColor(Color("ColorMainFont"))
                
                // MARK: - DIVIDER
                
                VStack{
                    Color("ColorMainFont").frame(height:CGFloat(3) / UIScreen.main.scale)
                }
                
                // MARK: - ICON
                
                IconView(article: article)
                
                // MARK: - SECOND ICON
                
                IconSecondView(article: article)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(Color("ColorAppearanceAdaptiveMain"))
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0 )
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .fullScreenCover(isPresented: self.$showModal) {
            ArticleMainContentView(article: self.article)
        }
    }
}

struct ArticleCardView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCardView(article: articleData[0])
            .previewLayout(.sizeThatFits)
    }
}
