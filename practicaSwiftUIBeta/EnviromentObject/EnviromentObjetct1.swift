//
//  EnviromentObjetct1.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 7/5/24.
//

import SwiftUI

//ViewModel
final class ViewModel2: ObservableObject {
    @Published var counter: Int = 0
}

//View 1: Contiene a view 2 y ésta a su vez contiene a view 3. Con .enviromentObject directamente pasamos el viewModel a las vistas donde lo necesitemos.

struct EnviromentObjetct1: View {
    @StateObject var viewModel = ViewModel2()
    
    var body: some View {
        VStack {
            Text("Counter: \(viewModel.counter)")
                .bold()
                .font(.largeTitle)
            Text("View 1 -> modificador .enviromentObject")
                .padding()
            EnviromentObject2()
        }
        .environmentObject(viewModel) //Añadimos aquí el modificador y enviamos el viewModel en el environmentObject, SI NO AÑADIMOS ESTE MODIF. NO PODREMOS INYECTAR EL VIEWMODEL
    }
}

struct EnviromentObjetct1_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObjetct1()
    }
}
