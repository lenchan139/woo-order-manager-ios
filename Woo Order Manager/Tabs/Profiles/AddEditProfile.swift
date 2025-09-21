//
//  AddEditProfile.swift
//  Woo Order Manager
//
//  Created by Len Chan on 21/9/2025.
//
import SwiftUI

struct AddEditProfilePage: View {
    @State var data = WooProfileData(name: "", domain: "", username: "", password: "")
    @State private var showingAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""

    var body: some View {
        Form {
            Section(header: Text("Profile Name")) {
                TextField("Enter the unique profile name", text: $data.name)
                    .padding()
            }
            Section(header: Text("Domain Prefix")) {
                TextField("like: https://example.com", text: $data.domain)
                    .keyboardType(.URL)
                    .padding()
            }
            Section(header: Text("key1/Username")) {
                TextField("Enter the key1", text: $data.username)
                    .padding()
            }
            Section(header: Text("key2/Password")) {
                TextField("Enter the key2", text: $data.password)
                    .padding()
            }
            Button("Submit") {
                print("name=\(data.name) domain=\(data.domain) username=\(data.username) password=\(data.password)")
                if data.name.isEmpty {
                    alertTitle = "Enter your name"
                    alertMessage = "Please enter your unique profile name"
                    showingAlert = true
                } else if data.domain.isEmpty {
                    alertTitle = "Enter your domain"
                    alertMessage = "Please enter your domain prefix"
                    showingAlert = true
                }else if(data.username.isEmpty){
                    alertTitle = "Enter your username"
                    alertMessage = "Please enter your key1/username"
                    showingAlert = true
                }else if(data.password.isEmpty){
                    alertTitle = "Enter your password"
                    alertMessage = "Please enter your key2/password"
                    showingAlert = true
                }else{
                    // finally,fire to validate
                }
                // Add more validations as needed
            }
            .alert(alertTitle, isPresented: $showingAlert) {
                Button("OK", role: .cancel) {}
            } message: {
                Text(alertMessage)
            }
        }
    }
}
