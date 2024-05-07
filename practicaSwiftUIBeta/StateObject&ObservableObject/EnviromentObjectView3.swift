//
//  EnviromentObjectView3.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 7/5/24.
//

import SwiftUI

struct EnviromentObjectView3: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text("View 3 -> @ObservedObject ViewModel") // Al tener otras vista en jerarquía aquí no se usa @StateObject, sino el @ObservedObject. Esto se sustituye con .enviromentObject es mas sencillo
                .padding()
            Button("Incrementar") {
                viewModel.counter += 1
            }
        }
    }
}

struct EnviromentObjectView3_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObjectView3(viewModel: ViewModel())
    }
}
