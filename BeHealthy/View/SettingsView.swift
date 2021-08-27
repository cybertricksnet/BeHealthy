//
//  SettingsView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 12/8/21.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    @AppStorage("enableDarkMode") private var enableDarkMode = false

    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            // MARK: - HEADER
            
            VStack(alignment: .center, spacing: 5) {
                Image("behealthy")
                  .resizable()
                  .scaledToFit()
                  .padding(.top)
                  .frame(width: 150, height: 150, alignment: .center)
                
                
                Text("BeHealthy")
                  .font(.system(.title, design: .rounded))
                  .fontWeight(.bold)
                  .foregroundColor(Color("ColorMainFont"))

            }
            .padding()
            
            Spacer()
            Form {
                
                // MARK: - SECTION 1
                
                Section(header: Text("Appearance")) {
                    Toggle(isOn: $enableDarkMode ) {
                        Text("Dark Mode")
                        
                    }
                    .preferredColorScheme(enableDarkMode ? .dark : .light)
                    .accentColor(.primary)
                }
                
                // MARK: - SECTION 2
                
                Section(header: Text("Application")) {
                    HStack {
                      Text("Name").foregroundColor(Color.gray)
                      Spacer()
                      Text("BeHealthy")
                    }
                    HStack {
                      Text("Category").foregroundColor(Color.gray)
                      Spacer()
                      Text("Health & Fitness")
                    }
                    HStack {
                      Text("Compatibility").foregroundColor(Color.gray)
                      Spacer()
                      Text("iPhone & iPad")
                    }
                    HStack {
                      Text("Developer").foregroundColor(Color.gray)
                      Spacer()
                      Text("Shiddarta Bahadur")
                    }
                    HStack {
                      Text("Website").foregroundColor(Color.gray)
                      Spacer()
                      Text("syd-dev.com")
                    }
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
