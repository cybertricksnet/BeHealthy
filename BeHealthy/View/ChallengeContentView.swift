//
//  ChallengeContentView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 11/8/21.
//

import SwiftUI

struct ChallengeContentView: View {
    
    // MARK: PROPERTIES
    
    var challenge: Challenge
    
    @State private var slideInAnimation: Bool = false

    var body: some View {
        VStack {
            Image(challenge.image)
                .resizable()
                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
                .background(
                  Circle()
                    .fill(Color("ColorBlueLight"))
                    .frame(width: 160, height: 160, alignment: .center)
                )
                .background(
                  Circle()
                    .fill(Color("ColorMainFont"))
                    .frame(width: 170, height: 170, alignment: .center)
                )
                .zIndex(1)
                .animation(Animation.easeInOut(duration: 1))
                .offset(y: slideInAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10) {
              
                // MARK: - MAIN TITLE

                VStack(alignment: .center, spacing: 0) {
                    Text(challenge.contentInButton)
                        .font(.system(.body, design: .rounded))
                        .fontWeight(.heavy)
                }
                .foregroundColor(Color("ColorMainFont"))
                .padding(.top, 65)
                .frame(width: 180)
 
                // MARK: - TITLE

                Text(challenge.contentTitle)
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorMainFont"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                      RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorBlueLight")]), startPoint: .top, endPoint: .bottom))
                      .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                // MARK: - DESCRIPTION

                ForEach(challenge.contentDescription, id: \.self) { item in
                    HStack(alignment: .firstTextBaseline, spacing: 8) {
                    Image(systemName: "circlebadge.fill")
                      .font(.system(size: 10, weight: .ultraLight))
                        .foregroundColor(Color("ColorMainFont"))
                    Text(item)
                        .font(.system(size: 13.1))
                        .foregroundColor(Color("ColorMainFont"))
                        .fontWeight(.medium)
                  }
                }
                .padding(.top, 20)
                .multilineTextAlignment(.leading)
                .frame(width: 270, alignment: .leading)
                Spacer()
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 330, height: 485, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueLight"), Color("ColorBlueMedium")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)

        }
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            slideInAnimation = true
        })
    }
}

struct ChallengeContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeContentView(challenge: challengeData[1])
    }
}
