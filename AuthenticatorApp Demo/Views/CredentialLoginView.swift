//
//  CredentialLoginView.swift
//  AuthenticatorApp Demo
//
//  Created by Andrew Acheampong on 11/2/23.
//

import SwiftUI

struct CredentialLoginView: View {
    @EnvironmentObject var authenticationManager: AuthenticationManager
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 40){
            Title()
            
            TextField ("Username", text: $username)
            
            SecureField ("Password", text: $password)
            
            PrimaryButton(showImage: false, text: "Login")
                .onTapGesture {
                    authenticationManager.authenticateWithCredentials(username: username, password: password)
                }
        }
        .textFieldStyle(.roundedBorder)
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(LinearGradient(colors: [.blue,.purple], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    CredentialLoginView().environmentObject(AuthenticationManager())
}
