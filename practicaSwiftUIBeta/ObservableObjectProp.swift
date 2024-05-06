//
//  ObservableObjectProp.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct ObservableObjectProp: View {
    @State private var counter: Int = 0
    var body: some View {
        // Pueden observar desde otra vista cuando cambian estados. A veces es mejor tener contenido relacionado, no dentro de la propia vista
        VStack{
            Text("Contador: \(counter)")
                .bold()
                .font(.largeTitle)
                .padding()
            Button("Incrementar contador") {
                counter += 1
            }
            ListVideos()
            Spacer()
        }
    }
}

struct ListVideos: View {
//    @ObservedObject private var videosViewModel = VideoViewModel() //Añadiendo este property wrapped puede actualizarse el viewModel observableObject así se convierte en observador. El problema es que no se refrescará la vista ObservableObjectProp porque hace una nueva llamada a ListVideos y se refresca, se inicializa. Por eso es mejor usar @StateObject
    @StateObject private var videosViewModel = VideoViewModel() //Con este property wrapped se escucha, si lo instanciamos la primera vez se recomienda usar este en vez de @ObservedObject. Si necesito usar de nuevo videoViewModel en otra vista, en ese caso usaría @ObservedObject.
    var body: some View {
        NavigationView{
            List (videosViewModel.videosModel, id: \.self){ video in
                Text(video)
            }
            .navigationTitle("SwiftBeta Videos")
            .navigationBarItems(leading:
                                    Button("Añadir", action: {videosViewModel.addMoreTopics()})
            )
        }
    }
}

final class VideoViewModel: ObservableObject {
    @Published var videosModel: [String] = [] // PAra que el cambio en esta propiedad se sincroniza en las vistas que se use. Para ello ese viewModel ha de conformar el protocolo ObservableObject
    
    init() {
        videosModel = ["Aprende SwiftUI",
                       "Aprende Xcode",
                       "Aprende Swift"]
    }
    func addMoreTopics() {
        videosModel.append("Aprende CI/CD")
        videosModel.append("Aprende Git")
    }
}

struct ObservableObjectProp_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectProp()
    }
}
