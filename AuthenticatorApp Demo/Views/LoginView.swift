//
//  LoginView.swift
//  AuthenticatorApp Demo
//
//  Created by Andrew Acheampong on 11/2/23.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var authenticationManager: AuthenticationManager
    var body: some View {
        VStack(spacing: 40) {
            Title()
            
            switch authenticationManager.biometryType {
           
            case .touchID:
                PrimaryButton(image: "touchid", text: "Login with TouchID")
                    .onTapGesture {
                        Task.init {
                            await
                            authenticationManager.authenticateWithBiometrics()
                        }
                    }
                       
            case .faceID:
                PrimaryButton(image:"faceid", text: "Login with FaceID")
                    .onTapGesture {
                        Task.init {
                            await
                            authenticationManager.authenticateWithBiometrics()
                        }
                    }
            default:
                NavigationLink {
                    CredentialLoginView()
                        .environmentObject(authenticationManager)
                }label: {
                    PrimaryButton(image: "person.fill", text: "Login with your credentials")
                }
               
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
        .background(LinearGradient(colors: [.blue,.purple], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    LoginView().environmentObject(AuthenticationManager())
}
