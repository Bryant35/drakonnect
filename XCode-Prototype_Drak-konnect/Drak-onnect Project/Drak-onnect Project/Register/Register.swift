//
//  Register.swift
//  Drak-onnect Project
//
//  Created by Bryant Anthony Thauwrisan on 03/04/23.
//

import SwiftUI
struct Register: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var rpassword: String = ""
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Image("Logo_Drak-onnect").resizable().frame(width: 200.0, height:200).scaledToFill()
                }
                Text("Register")
                    .font(.title2)
                    .fontWeight(.bold).padding(.top, 10)
                TextField("Username", text: $username).padding([.top, .leading, .bottom], 10).disableAutocorrection(true).overlay(RoundedRectangle(cornerRadius: 7).stroke(lineWidth: 1)).padding(.horizontal, 50.0).padding(.top, 10)
                TextField("Email", text: $email).padding([.top, .leading, .bottom], 10).disableAutocorrection(true).overlay(RoundedRectangle(cornerRadius: 7).stroke( lineWidth: 1)).padding(.horizontal, 50.0).padding(.top, 10)
                SecureField("Password", text: $password).padding([.top, .leading, .bottom], 10).disableAutocorrection(true).overlay(RoundedRectangle(cornerRadius: 7).stroke(lineWidth: 1)).padding(.horizontal, 50.0).padding(.top, 10)
                SecureField("Re-enter Password", text: $rpassword).padding([.top, .leading, .bottom], 10).disableAutocorrection(true).overlay(RoundedRectangle(cornerRadius: 7).stroke(lineWidth: 1)).padding(.horizontal, 50.0).padding(.top, 10)
                
                
                NavigationLink(destination: Genre_Selection()){
                    Text("Create")
                        .padding(.all, 10.0).padding(.horizontal)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(14
                        ).navigationBarBackButtonHidden(true)
                        .padding(.top, 25)
                }
            }
        }
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
        
        Register()
            .environment(\.colorScheme, .dark)
    }
}
