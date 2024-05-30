//
//  MenuView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 15/5/24.
//

import SwiftUI

struct MenuView: View {
    @State private var selectedOption: String = "Selecciona una opción"
    let options = ["Profesional", "Aficionado", "Estudiante"]

    var body: some View {
        VStack {
            Text("¿Eres profesional?")
                .font(.headline)
                .padding()

            Menu {
                ForEach(options, id: \.self) { option in
                    Button(option) {
                        selectedOption = option
                    }
                }
            } label: {
                Label(selectedOption, systemImage: "chevron.down")
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
            }
            
            Text("Seleccionado: \(selectedOption)")
                .padding()
        }
        .padding()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
