//
//  ArticleMainContentView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 10/8/21.
//

import SwiftUI

struct ArticleMainContentView: View {
    
    // MARK: - PROPERTIES
    
    var article: Article
    
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode


    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                
                // MARK: - IMAGE
                
                Image(article.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    
                    // MARK: - TITLE
                    
                    Text(article.title)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorMainFont"))
                        .padding(.top, 10)
                    
                    // MARK: - HEADLINE
                    
                    Text(article.headline)
                        .font(.system(.subheadline, design: .rounded))
                        .foregroundColor(Color("ColorMainFont"))
                    
                    // MARK: - SECOND ICON
                    IconSecondView(article: article)

                    // MARK: - DIVIDER
                    VStack{
                        Color("ColorMainFont").frame(height:CGFloat(3) / UIScreen.main.scale)
                    }
        
                    // MARK: - CONTENT
                    Text("Summary")
                        .fontWeight(.bold)
                        .font(.system(size: 22.5, design: .rounded))
                        .foregroundColor(Color("ColorMainFont"))
                        .frame(width: 370, alignment: .leading)

                    
                    VStack(alignment: .leading, spacing: 6) {
                      ForEach(article.fourth, id: \.self) { item in
                        VStack(alignment: .leading, spacing: 6) {
                          Text(item)
                            .font(.system(size: 13.1, design: .default))
                            .frame(width: 370, alignment: .leading)
                        }
                      }
                    }
                    
                    // MARK: - FIFTH CONTENT
                    
                    Text("What To Eat")
                        .fontWeight(.bold)
                        .font(.system(size: 22.5, design: .rounded))
                        .foregroundColor(Color("ColorMainFont"))
                        .frame(width: 370, alignment: .leading)
                    
                    ForEach(article.fifth, id: \.self) { item in
                        HStack(alignment: .firstTextBaseline, spacing: 12) {
                        Image(systemName: "circlebadge.fill")
                          .font(.system(size: 10, weight: .ultraLight))
                          .foregroundColor(Color.primary)
                        Text(item)
                            .font(.system(size: 13.1))
                      
                      }
                    }
                    .frame(width: 365, alignment: .leading)
               
                    // MARK: - SIXTH CONTENT
                    
                    Text("Things To Remember")
                        .fontWeight(.bold)
                        .font(.system(size: 22.5, design: .rounded))
                        .foregroundColor(Color("ColorMainFont"))
                        .frame(width: 370, alignment: .leading)
                    
                    ForEach(article.sixth, id: \.self) { item in
                        HStack(alignment: .firstTextBaseline, spacing: 12) {
                        Image(systemName: "circlebadge.fill")
                          .font(.system(size: 10, weight: .ultraLight))
                          .foregroundColor(Color.primary)
                        Text(item)
                            .font(.system(size: 13.1))
                      
                      }
                    }
                    .frame(width: 365, alignment: .leading)
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay(
          HStack {
            Spacer()
            VStack {
              Button(action: {
                
                // MARK: - ACTION

                self.presentationMode.wrappedValue.dismiss()
              }, label: {
                Image(systemName: "arrow.backward.circle.fill")
                  .font(.title)
                    .foregroundColor(Color("ColorMainFont"))
                  .opacity(self.pulsate ? 1 : 0.7)
                  .scaleEffect(self.pulsate ? 1.2 : 1, anchor: .center)
                  .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
              })
                .padding(.trailing, 20)
                .padding(.top, 24)
              Spacer()
            }
          }
        )
        .onAppear() {
          self.pulsate.toggle()
        }
        .padding(.bottom, 15)

        // MARK: - DARK MODE
        .modifier(DarkModeViewModifier())
    }

}

struct ArticleMainContentView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleMainContentView(article: articleData[0])

    }
}
