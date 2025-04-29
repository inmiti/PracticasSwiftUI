//
//  SceneStorageView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 21/4/25.
// SCENESTORAGE property wrapped para guardar estado cuando la app se va  a background y el sistema la cierra. Se utiliza para que los datos se recarguen cuando volvemos a la app dando sensacion al user de continuidad. Guarda el estado de una escena, para persistir datos, no funciona si se cierra la app. Si no das a pause antes del play para volver  a ejecutar la app no va a funcionar. No funciona si cerramos la app, solo si va a background.

import SwiftUI

struct SceneStorageView: View {
    @SceneStorage("Tweet") private var tweet: String = ""
    @SceneStorage("toggle best hour") private var togglePublishBestHour: Bool = false
    
    var body: some View {
        Form{
            TextEditor(text: $tweet)
                .frame(width: 300, height: 300)
            Toggle("Publicar a la mejor hora", isOn: $togglePublishBestHour)
                .padding()
            HStack{
                Spacer()
                Button(togglePublishBestHour ? "Publicar a la mejor hora mmmm" : "Publicar ahora mmmm") {
                    print("Publicando... ")
                }
                Spacer()
            }
        }
    }
}

#Preview {
    SceneStorageView()
}
