//
//  SliderView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct SliderView: View {
    @State var iPhoneCounter: Float = 0.0
    @State var isEditing: Bool = false
    
    var body: some View {
        //Permite seleccionar un valor de un rango de valores
        Form {
            Slider(value: $iPhoneCounter, // valor
                   in: 0...10, //rango de valores
                   step: 1, //de uno en uno
                   onEditingChanged: { (editing) in
                isEditing = editing
            },
                   minimumValueLabel: Text("min"), //etiqueta a la izquierda valor mínimo a escoger
                   maximumValueLabel: Text("max"), //etiqueta a la derecha que indica valor maximo
                   label: {
                Text("Selecciona número de iphones")
            })
            Text("\(iPhoneCounter)")
                .foregroundColor(isEditing ? .green : .black)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
