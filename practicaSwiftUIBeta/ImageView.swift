//
//  ImageView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 3/5/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("youtube")
            .resizable(resizingMode: .tile) 
//            .renderingMode(.template) //para cambiar el color de imagen u otras propiedades, util en imagenes en pdf vectoriales.
//            .resizable()
//            .scaledToFit()
//            .frame(width: 96, height: 96)
//            .foregroundColor(.blue)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
