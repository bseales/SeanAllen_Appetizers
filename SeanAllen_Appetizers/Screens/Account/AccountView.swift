//
//  AccountView.swift
//  SeanAllen_Appetizers
//
//  Created by Batson Seales on 6/13/23.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthdate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled(true)
                        .textInputAutocapitalization(.never)
                    DatePicker("Birthdate", selection: $birthdate, displayedComponents: .date)
                    Button {
                        print("save")
                    } label: {
                        Text("Save changes")
                            .foregroundColor(.accentColor)
                    }
                } header: {
                    Text("Personal Info")
                }
                
                Section {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                } header: {
                    Text("Requests")
                }
            }
            .navigationTitle(Text("🐶 Account"))
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
