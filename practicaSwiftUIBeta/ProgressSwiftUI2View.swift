//
//  ProgressSwiftUI2View.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct ProgressSwiftUI2View: View {
    @State var progress: Float = 0.0
    var body: some View {
        VStack {
            ProgressView(value: progress)
            Button("Cargando") {
                progress += 0.1
            }.padding(.top, 40)
        }.padding(.horizontal, 32)
        
    }
}

struct ProgressSwiftUI2View_Previews: PreviewProvider {
    static var previews: some View {
        ProgressSwiftUI2View()
    }
}
