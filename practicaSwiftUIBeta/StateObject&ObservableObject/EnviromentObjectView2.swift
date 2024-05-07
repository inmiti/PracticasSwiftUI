//
//  EnviromentObjectView2.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 7/5/24.
//

import SwiftUI

struct EnviromentObjectView2: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text("View 2 -> ObservedObject ViewModel") // Usamos aquí @ObservedObject porque es la segunda vista en jerarquía a la que le pasamos el viewModel. Aquí realmente no se usa, solo se pasa para que lo pueda usar la vista 3. Es preferible usar .enviromentObject directamtente en las vistas que se necesite. 
                .padding()
            EnviromentObjectView3(viewModel: viewModel)
        }
    }
}

struct EnviaromentObjectView2_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObjectView2(viewModel: ViewModel())
    }
}
