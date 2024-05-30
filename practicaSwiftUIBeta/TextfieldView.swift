//
//  TextfieldView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 4/5/24.
//

import SwiftUI

struct TextfieldView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
//                .foregroundColor(.red)
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: username, perform: {value in
                    print("New value \(value)") //Cada vez que hay un cambio entra el valor actual del textfield
                })
            SecureField("Password", text: $password)
                .keyboardType(.default)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .onChange(of: password, perform: {value in
                    print("Password value \(value)")
                })
            
            Spacer()
        }
        
    }
}

struct TextfieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldView()
    }
}
