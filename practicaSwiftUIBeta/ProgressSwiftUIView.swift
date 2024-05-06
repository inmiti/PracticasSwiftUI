//
//  ProgressSwiftUIView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct ProgressSwiftUIView: View {
    @State var isLoading: Bool = false
    var body: some View {
        VStack {
            if isLoading {
                ProgressView("Cargando")
                    .scaleEffect(2)
            }
            Button("Cargando") {
                isLoading = !isLoading
            }.padding(.top, 40)
        }
    }
}

struct ProgressSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressSwiftUIView()
    }
}
