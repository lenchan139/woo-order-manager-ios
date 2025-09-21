//
//  ProfileTab.swift
//  Woo Order Manager
//
//  Created by Len Chan on 8/9/2025.
//


import SwiftUI
import SwiftData


struct ProfileTab: View{
    
    @Environment(\.modelContext) private var modelContext
    @Query private var profiles: [WooProfileData]

    var body: some View {
        NavigationStack{
            VStack{
                if(profiles.isEmpty){
                    Text("zero row, go top-right corner to add first one.")
                }else{
                    List(profiles) { profile in
                        HStack {
                            Text(profile.name)
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
    //                dismiss()
                }, label: {
                    
                    NavigationLink(destination: AddEditProfilePage()) {
                        HStack(spacing: 5) {
                            Image(systemName: "plus")
                                .fontWeight(.semibold)
                            Text("Add...")
                        }
                    }
                })
            }
            }
        }
        
    }
}
