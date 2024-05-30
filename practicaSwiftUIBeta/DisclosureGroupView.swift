//
//  DisclosureGroupView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 15/5/24.
//

import SwiftUI

struct DisclosureGroupView: View {
    @State private var selectedOption: String = "¿Eres profesional del bienestar?"
    @State private var isExpanded: Bool = false
    let options = ["Profesional", "Aficionado", "Estudiante"]
    
    @State private var selectedOption2: String = "¿Profesional o Usuario?"
    @State private var isExpanded2: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            Text("¿Eres profesional?")
                .font(.headline)
                .padding()
            
            DisclosureGroup(selectedOption, isExpanded: $isExpanded) {
                VStack {
                    ForEach(options, id: \.self) { option in
                        Text(option)
                            .padding()
//                            .foregroundColor(.red)
                            .background(Color.gray.opacity(0.1))
                            .onTapGesture {
                                selectedOption = option
                                isExpanded = false
                            }
                    }
                }
//                .background(Color.gray.opacity(0.2))
                .padding()
            }
            .padding()
            .background(Color.pink.opacity(0.2))
//            .cornerRadius(30)
            
            Text("Seleccionado: \(selectedOption)")
                .padding()
            
            Spacer()
            
            //OTRO INICIALIZADOR DE DISCLOSURE PARA PODER EDITAR EL TEXTO INICIAL Y FINAL:
            Text("PARA PODER EDITAR COLORES TEXTOS:")
                .font(.largeTitle)
            DisclosureGroup(isExpanded: $isExpanded2,
                            content: {
                VStack {
                    ForEach(options, id: \.self) { option in
                        Text(option)
                            .padding()
                            .foregroundColor(.black) // Color del texto de las opciones
                            .background(Color.gray.opacity(0.1)) // Fondo de las opciones
                            .cornerRadius(5)
                            .onTapGesture {
                                selectedOption2 = option
                                isExpanded2 = false
                            }
                    }
                }
                .padding()
            },
                            label: {
                Text(selectedOption2)
                    .foregroundColor( selectedOption2 == "¿Profesional o Usuario?" ? .gray : .black ) // Color del texto inicial
                    .padding()
                    .background(Color.white.opacity(0.2)) // Fondo del texto inicial
                    .cornerRadius(8)
            }
            )
            
        }
        .padding()
    }
}

struct DisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupView()
    }
}
