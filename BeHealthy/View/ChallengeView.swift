//
//  ChallengeView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 9/8/21.
//

import SwiftUI

struct ChallengeView: View {
    
    // MARK: - PROPERTIES
    
    var challengeContent: [Challenge] = challengeData
    
    var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
        VStack {
          Spacer()
          HStack(alignment: .center, spacing: 25) {
            ForEach(challengeContent) { item in
              ChallengeContentView(challenge: item)
            }
          }
          .padding(.vertical)
          .padding(.horizontal, 25)
          Spacer()
        }
      }
      .edgesIgnoringSafeArea(.all)
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView(challengeContent: challengeData)
    }
}
