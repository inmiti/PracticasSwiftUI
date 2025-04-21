//
//  AsyncImageView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 21/4/25.
// muestra vista cargandola al pasarle una url.

import SwiftUI

struct AsyncImageView: View {
    
    private let url = URL(string: "https://placebear.com/1000/1000")
    
    var body: some View {
        // AsyncImage(url: url) la imagen así aparece deformada
        
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding()
        } placeholder: {
            ProgressView()
        }

    }
}

#Preview {
    AsyncImageView()
}
