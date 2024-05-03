//
//  LabelView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 3/5/24.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        Label("Suscribete a mi canal", systemImage: "hand.thumbsup.fill")
            .font(.largeTitle)
            .labelStyle(TitleOnlyLabelStyle()) // Priorizamos el icono el texto o el icon en casos de poco espacio (toolbar, navigationView, u otras vistas .. )
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
