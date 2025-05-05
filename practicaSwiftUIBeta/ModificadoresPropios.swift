//
//  ModificadoresPropios.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 5/5/25.
//

import SwiftUI

struct NewButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
    }
    
    
}

//Mejorarmos el codigo para no tener que usar .modifier() creamos extension en VIew
extension View {
    func newButtonModifier() -> some View {
        self.modifier(NewButtonModifier())
    }
}

struct ModificadoresPropios: View {
    var body: some View {
        
        VStack {
            Text("Hello, World! 😎")
                .bold()
                .padding()
            Button ("OK"){
                print("Suscribete a mi canal")
            }
            .modifier(NewButtonModifier()) //usando modifier
        }
//        .newButtonModifier() //usando extension en View
    }
}

#Preview {
    ModificadoresPropios()
}
