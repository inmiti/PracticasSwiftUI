//
//  TapGestureView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct TapGestureView: View {
    var body: some View {
        // Añadimos acciones a los elementos de nuestra vista cuando hacemos tap: activar una animacion, hacer peticion a servidor, etc
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .onTapGesture { // Otra forma mas simplificada, igualmente podriamos poner un count dentro para indicar el numero de taps.
                print("View tapped")
            }
//            .gesture(
//                TapGesture(count: 2) //para que se ejecute podemos dar con count el numero de taps para ejecutar la acción, por defecto es 1.
//                    .onEnded({ _ in
//                        print("View tapped")
//                    })
//            )
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
