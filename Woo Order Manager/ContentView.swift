//
//  ContentView.swift
//  Woo Order Manager
//
//  Created by Len Chan on 8/9/2025.
//

import SwiftData
import SwiftUI
struct BottomTabBar: View {
    var isLogggedOn = false;
    var body: some View {
        TabView{
  if(isLogggedOn){
      HomeTab()
          .tabItem{
              Label("Home",systemImage: "house.fill")
          }
  OrderTab()
          .tabItem{
              Label("Orders",systemImage: "list.bullet.clipboard.fill")
          }
            }
            ProfileTab()
                .tabItem{
                    Label("Profile",systemImage: "person.fill")
                }
            
        }
    }

}

struct ContentView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var cards: [WooProfileData]
    var body: some View {
        VStack {
            BottomTabBar()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
