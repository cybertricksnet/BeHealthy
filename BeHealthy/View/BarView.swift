//
//  BarView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 10/8/21.
//

import SwiftUI

struct BarView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            
            //MARK: - FIRST COLUMN
            
            VStack(alignment: .leading, spacing: 4) {
                HStack() {
                    Image("icon-healthy")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Balanced Meals")
                }
                Divider()
                HStack() {
                    Image("icon-food")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Avoid Fast Food")

                }
                Divider()
                HStack() {
                    Image("icon-sugar")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Cut Down Sugar")

                }
                Divider()
            }
            
            //MARK: - SECOND COLUMN
            
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                
                Image(systemName: "waveform.path.ecg")
                    .font(Font.title2.weight(.ultraLight))
                    .imageScale(.large)
                
                
                HStack {
                    Divider()
                }

            }

            //MARK: - THIRD COLUMN
            
            VStack(alignment: .trailing, spacing: 4) {
                HStack() {
                    Text("Regular Exercise")
                    Spacer()
                    Image("icon-exercise")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Drink More Water")
                    Spacer()
                    Image("icon-drink")
                        .resizable()
                        .modifier(IconModifier())

                }
                Divider()
                HStack() {
                    Text("Get Enough Sleep")
                    Spacer()
                    Image("icon-sleep")
                        .resizable()
                        .modifier(IconModifier())

                }
                Divider()
            }
            
        }
        .font(.system(.callout, design: .rounded))
        .foregroundColor(Color("ColorMainFont"))
        .padding(.horizontal)
        .frame(maxWidth: 400, maxHeight: 220)
        
    }
}


struct IconModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .frame(width: 38, height: 38, alignment: .center)
  }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
            .previewLayout(.fixed(width: 414, height: 280))
        
    }
}
