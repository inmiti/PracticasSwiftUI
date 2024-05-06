//
//  ActionSheetView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct ActionSheetView: View {
    @State var isPresented: Bool = false
    var body: some View {
        // Tipo alert en la parte inferior de la pantalla, para escoger opciones, incluso puede ser desde imagen o escoger desde la galería.
        
        VStack {
            Text("Suscríbete")
                .padding()
            Button("Aceptar", action: {
                isPresented = true
})
        }
        .actionSheet(isPresented: $isPresented ,content: {
            ActionSheet(title: Text("Aprende swiftUI con swiftBeta"),
                        message: Text("Elige la opción que prefieras"),
                        buttons: [ActionSheet.Button.default(Text("SwiftUI"),
                                                             action: {print("Aprende swiftUI")}),
                                  .default(Text("Xcode"),
                                           action: {print("Aprende Xcode")}),
                                  .destructive(Text("Cancelar"))
                        ]
            )
        })
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
