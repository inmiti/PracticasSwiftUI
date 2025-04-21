//
//  BindingPropertyWrapped.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct BindingPropertyWrapped: View {
    @State var counter: Int = 0 // Usar state cuando haya que mutar una propiedad que viene de la misma vista.
    // Tambien lo usaremos para pasar a otra vista la propiedad. Se usa dentro del struct
    
    var body: some View {
        CounterView(counter: $counter)
    }
}

struct CounterView: View {
    @Binding var counter: Int //Usar binding cuando haya que mutar una propiedad que llegue de otra vista
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Counter \(counter)")
                .font(.largeTitle)
            Button("Incrementar valor") {
                self.counter += 1
            }
        }
    }
}

struct BindingPropertyWrapped_Previews: PreviewProvider {
    static var previews: some View {
        BindingPropertyWrapped()
    }
}
