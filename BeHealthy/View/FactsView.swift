//
//  FactsView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 7/8/21.
//

import SwiftUI

struct FactsView: View {
    
    // MARK: - PROPERTIES

    var fact: Fact

    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueMedium"), Color("ColorBlueLight")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.callout)
                .foregroundColor(Color("ColorMainFont"))
            
                Image(fact.image)
                    .resizable()
                    .frame(width: 66, height: 66, alignment: .center)
                    .clipShape(Circle())
                    .background(
                        Circle()
                            .fill(Color("ColorCircleAdaptive"))
                            .frame(width: 74, height: 74, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        )
                    .background(
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueMedium"), Color("ColorBlueLight")]), startPoint: .trailing, endPoint: .leading))
                            .frame(width: 82, height: 82, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        )
                    .background(
                        Circle()
                            .fill(Color("ColorAppearanceAdaptive"))
                            .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        )
                    .offset(x: -148)
        }
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(fact: factsData[0])
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
