//
//  AppView.swift
//  BeHealthy
//
//  Created by Shiddarta Bahadur on 3/8/21.
//

import SwiftUI

struct AppView: View {
    
    init(){
        UITabBar.appearance().barTintColor = UIColor(named: "ColorTabviewAdaptive")
        UITabBar.appearance().isTranslucent = false
    }
    
    var body: some View {
        TabView{
            BehealthyView()
                .tabItem ({
                    Image(systemName: "house.fill")
                    Text("Home")
                })
            
            ContentView()
                .tabItem ({
                    Image(systemName: "heart.text.square.fill")
                    Text("Eat Right")
                })
            
            ChallengeView()
                .tabItem ({
                    Image(systemName: "bolt.circle.fill")
                    Text("Challenge")
                })
            
            SettingsView()
                .tabItem ({
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                })
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color("ColorMainFont"))
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}


