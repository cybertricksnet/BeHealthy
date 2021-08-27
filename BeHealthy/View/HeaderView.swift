//
//  HeaderView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 10/8/21.
//

import SwiftUI

struct HeaderView: View {
    
    //MARK: - PROPERTIES
    
    var header: Header
    
    @State private var showHeadline: Bool = false
    
    var slideAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
        .speed(1)
        .delay(0.25)
    }
    
    
    var body: some View {
        ZStack{
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorBlueBarAdaptive"))
                    .frame(width: 4)
                
                
                VStack (alignment: .leading, spacing: 6){
                    Text(header.headline)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorMainFont"))
                        
                    Text(header.subheadline)
                        .font(.callout)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("ColorMainFont"))

                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 285, height: 105)
                .background(Color("ColorWhiteTransparentLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideAnimation)
            .onAppear(perform: {
              showHeadline = true
            })
            .onDisappear(perform: {
              showHeadline = false
            })
          }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[1])
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)

    }
}

