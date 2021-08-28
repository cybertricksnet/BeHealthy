//
//  BehealthyView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 8/8/21.
//

import SwiftUI

struct BehealthyView: View {
    
    // MARK: - PROPERTIES
    
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        VStack{
          Spacer()
            
        Image("behealthy")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height:300, alignment: .center)
            .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
            .opacity(self.pulsateAnimation ? 1 : 0.8)
            .animation(Animation.easeInOut(duration: 1.8).repeatForever(autoreverses: true))
         
        VStack{
            Text("BeHealthy")
                .font(.system(size: 48, weight: .bold, design: .rounded))
                .foregroundColor(Color("ColorMainFont"))
            Text("""
                Healthy does not mean starving yourself with a strict diet. Healthy means eating the right food in the right amount.
                """)
                .lineLimit(nil)
                .font(.system(size: 15.3, design: .rounded))
                .foregroundColor(Color("ColorMainFont"))
                .shadow(color: Color("ColorMainFont"), radius: 0.2, x: 0, y: 0.2)
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 325, minHeight: 120)
        }
        .padding()
    
        Spacer()
        }
        .background(
          Image("background")
         .resizable()
         .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        )
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onAppear(perform: {
            self.pulsateAnimation.toggle()
        })
    }
    
}

struct BehealthyView_Previews: PreviewProvider {
    static var previews: some View {
        BehealthyView()
            .previewDevice("iPhone 8 Plus")
            .environment(\.colorScheme, .dark)
    }
}
