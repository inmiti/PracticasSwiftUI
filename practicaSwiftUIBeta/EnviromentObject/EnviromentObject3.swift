//
//  EnviromentObject3.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 7/5/24.
//

import SwiftUI

struct EnviromentObject3: View {
    @EnvironmentObject var viewModel: ViewModel2 //Obtiene el viewModel con el property @EnvironmentObject
    
    var body: some View {
        VStack {
            Text("View 3 -> @EnviromentObject var ViewModel")
                .padding()
            Button("Incrementar") {
                viewModel.counter += 1
            }
        }
    }
}

struct EnviromentObject3_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObject3()
    }
}
