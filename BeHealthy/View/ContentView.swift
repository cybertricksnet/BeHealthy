//
//  ContentView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var article: [Article] = articleData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - HEADER
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                Spacer()
                // MARK: - BARVIEW
                Text("Healthy Lifestyle")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .modifier(TitleModifier())

                
                BarView()
                    .frame(maxWidth: 640)

                Spacer()
                // MARK: - FACTS
                Text("Nutrition Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(alignment: .top, spacing: 60 ) {
                        ForEach(facts) { item in
                            FactsView(fact: item)
                            }
                        }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                // MARK: - ARTICLE CARDS
                Text("Healthy Food Choice")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(article) { item in
                        ArticleCardView(article: item)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                .padding()
                .padding(.bottom, 10)
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .padding(0)
    }
}

// MARK: - DARK MODE
public struct DarkModeViewModifier: ViewModifier {
    @AppStorage("enableDarkMode") private var enableDarkMode = false
    public func body(content: Content) -> some View {
    content
        .environment(\.colorScheme, enableDarkMode ? .dark : .light)
        .preferredColorScheme(enableDarkMode ? .dark : .light)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .rounded))
            .foregroundColor(Color("ColorMainFont"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factsData, article: articleData)
    }
}
