//
//  PickerView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 15/5/24.
//

import SwiftUI

struct PickerView: View {
    @State private var selection: String = ""
    @State private var selection2: Int = 0
    @State private var selection3: Int = 0
    let options = ["Profesional", "Usuario"]
    
    var body: some View {
        VStack {
            // Picker titulo - selection - content
            Text("Picker Menu style:")
            Picker("¿Eres profesional del bienestar?",
                   selection: $selection,
                   content: {ForEach(options, id: \.self) { option in
                Text(option).tag(option) // Muy importante usar .tag para que se asocie bien con selection la opcion seleccionada.
                }
                
            })
            .pickerStyle(MenuPickerStyle())
//            .pickerStyle(WheelPickerStyle())
//            .pickerStyle(InlinePickerStyle())
//            .pickerStyle(DefaultPickerStyle())
//            .pickerStyle(SegmentedPickerStyle())
            Spacer()
            
            // Picker selection - label - content
            Text("Picker Segmented style:")
            Picker(selection: $selection2, label: Text("¿Eres profesional?")) {
                ForEach(0..<options.count, id: \.self) { index in
                    Text(options[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            Spacer()
            // Para asegurarte de que aparece la etiqueta:
            Text("Picker con etiqueta:")
            VStack (alignment: .leading, content: {
                HStack {
                    Text("¿Eres profesional?")
                        .font(.headline) // Estilo opcional para la etiqueta
                    
                    Picker(selection: $selection3, label: Text("")) {
                        ForEach(0..<options.count, id: \.self) { index in
                            Text(options[index]).tag(index)
                        }
                    }
                    .pickerStyle(MenuPickerStyle()) // Opcional: para un estilo de Picker específico
                }
                
                Text("Seleccionado: \(options[selection3])") // Mostrar la opción seleccionada
            })
            .padding()
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
