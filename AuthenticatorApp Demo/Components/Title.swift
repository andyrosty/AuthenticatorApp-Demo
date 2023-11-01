//
//  Title.swift
//  AuthenticatorApp Demo
//
//  Created by Andrew Acheampong on 11/2/23.
//

import SwiftUI

struct Title: View {
    var body: some View {
        Text("Authenticator")
            .bold()
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
    }
}

#Preview {
    Title()
        .background(LinearGradient(colors: [.blue,.purple], startPoint: .topLeading, endPoint: .bottomTrailing))
}
