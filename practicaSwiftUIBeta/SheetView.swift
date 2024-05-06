//
//  SheetView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct SheetView: View {
    @State var isPresented: Bool = false
    var body: some View {
        // Otras formas de navegar a otras pantallas: idem fullscreenCover pero aquí la segunda vista no ocupa toda la pantalla. Se puede arrastrar hacia abajo.
        VStack {
            Text("View 1")
                .padding()
            Button("Ok") {
                isPresented = true
                
            }
        }
        .sheet(isPresented: $isPresented, // propiedad, si es true muestra la pantalla
                         onDismiss: {isPresented = false}, //Instrucciones para cuando se oculte la view 2
                         content: { //Especificaremos la vista que queramos mostrar
                            ZStack{
                                Color.red.ignoresSafeArea()
                                Button("Bienvenido!!!", action: {
                                    isPresented = false
                                })
                            }
        })
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
