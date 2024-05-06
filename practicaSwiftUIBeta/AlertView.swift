//
//  AlertView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct AlertView: View {
    @State var isPresented: Bool = false
    var body: some View {
        // Vista Alert tipo popat, vista que contiene title, descripcion y algun button. Apliación para confirmar alguna accion (confirmar borrado de datos, confirmar un logout, etc. )
        VStack {
            Text("Suscribete")
                .padding()
            Button("Aceptar") {
                isPresented = true
            }
        } //Aparece cuando cambiemos el valor a true al dar en el botón
        .alert(isPresented: $isPresented, content: {
            Alert(title: Text("Suscríbete"),
                  message: Text("Cada semana nuevo vídeo"),
                  primaryButton: Alert.Button.default(Text("Aceptar"),
                                                      action: { print("Button acept tapped")
            }),
                  secondaryButton: .destructive(Text("Cancelar"), action: { print("Button cancel tapped") }
        ))
        })
        
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
