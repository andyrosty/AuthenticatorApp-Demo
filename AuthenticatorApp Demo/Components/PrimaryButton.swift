//
//  PrimaryButton.swift
//  AuthenticatorApp Demo
//
//  Created by Andrew Acheampong on 11/2/23.
//

import SwiftUI

struct PrimaryButton: View {
    var image: String?
    var showImage = true
    var text: String
    
    var body: some View {
        HStack {
            if showImage{
                Image(systemName: image ?? "person.fill")
            }
            Text(text)
        }
        .padding()
        .padding(.horizontal)
        .background(.white)
        .cornerRadius(30)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PrimaryButton(image: "faceid", text: "Login with FaceID")
}
