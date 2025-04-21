//
//  TabViewNavigation.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 3/5/24.
//

import SwiftUI

struct TabViewNavigation: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundColor(.blue)
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundColor(.red)
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
        }
//        .accentColor(.green)
        .frame(height:400)
        .tabViewStyle(DefaultTabViewStyle())
//        .tabViewStyle(PageTabViewStyle()) //Aplicacion onboarding de la app
        
    }
}

struct TabViewNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TabViewNavigation()
    }
}

struct HomeView: View {
    var body: some View {
        VStack{
            Image(systemName: "house.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Home")
                .padding(.top,20)
        }
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile")
    }
}
