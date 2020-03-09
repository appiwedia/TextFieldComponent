//
//  ContentView.swift
//  TextFieldComponent
//
//  Created by Mickael Mas on 09/03/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var twitter: String = ""

    var body: some View {
        Form {
            Section {
                TextField("Prénom", text: $firstName)
                    .textContentType(.name)
                TextField("Nom", text: $lastName)
                    .textContentType(.familyName)
                    .autocapitalization(.allCharacters)
                    .disableAutocorrection(true)
            }
            
            Section {
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                TextField("Phone", text: $phone)
                    .keyboardType(.phonePad)
            }
            
            Section {
                HStack {
                    Image("twitter")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(10)
                    TextField("Twitter", text: $twitter)
                        .keyboardType(.twitter)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
