//
//  ContentMenuView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct ContentMenuView: View {
    var body: some View {
        //Menu de opciones en forma de popat mientras pulsa el dedo en la lista aparecen un listado de botones
        Text("Aprende con SwiftBeta")
            .padding()
            .contextMenu(
                ContextMenu(menuItems: {
                    Button("SwiftUI", action: {
                        print("Quiero aprender SwiftUI")})
                    Button("Xcode") {
                        print("Quiero aprender Xcode")
                    }
                    Button(action: {
                        print("Quiero aprender swift")
                    }, label: {
                        Label("Swift", systemImage: "iphone")
                    })
                }))
    }
}

struct ContentMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContentMenuView()
    }
}
