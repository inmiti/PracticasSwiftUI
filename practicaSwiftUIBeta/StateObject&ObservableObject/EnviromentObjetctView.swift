//
//  EnviromentObjetctView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 7/5/24.
//

import SwiftUI

//ViewModel
final class ViewModel: ObservableObject {
    @Published var counter: Int = 0
}

//View 1: Se actualizará con view 2 y esta a su vez con view 3. En view 3 está el botón de incrementar que luego aparecerá en el texto de view 1
struct EnviromentObjetctView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        // En una clase padre que podrá ser usada en otras subvistas
        VStack {
            Text("Counter: \(viewModel.counter)")
                .bold()
                .font(.largeTitle)
            Text("View 1 ->  @StateObject ViewModel") // En la primera vista se usa el property wrapped @StateObject cuando es la primera vista donde lo usamos. 
                .padding()
            EnviromentObjectView2(viewModel: viewModel)
        }
    }
}

struct EnviromentObjetctView_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObjetctView()
    }
}
