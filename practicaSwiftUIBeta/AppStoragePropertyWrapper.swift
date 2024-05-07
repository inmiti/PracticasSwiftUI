//
//  AppStoragePropertyWrapper.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 7/5/24.
//

// APPSTORAGE: Para persistir información en una base de datos, de forma que cuando iniciemos la app tengamos ahí la información guardada previamente. Usa por debajo UserDefault.

import SwiftUI

struct AppStoragePropertyWrapper: View {
    @State var username: String = "" //Persiste en memoria, cada vez que se ejecuta se inicializa a "".
    @AppStorage("appStorageName") var appStorageName: String = "" // Damos entre paréntesis el nombre en string por si lo necesitamos en otra parte de la app.
    
    var body: some View {
        
        Form{
            TextField("Username", text: $username)
            HStack {
                Spacer()
                Button("Guardar") {
                    appStorageName = username //Asignamos el nombre para persistirlo en la app y lo podremos obtener en la siguiente ejecución.
                }
                .padding()
                Spacer()
            }
            HStack {
                Spacer()
                Button("Imprimir valor") {
                    print(UserDefaults.standard.string(forKey: "appStorageName")) //Accedemos a la clase userdefaults para comprobar que la información se ha guardado correctamente.
                }
                .padding()
                Spacer()
            }
        }
        .onAppear{
            username = appStorageName // Es necesario para poder mostrarlo en el TextField
        }
    }
}

struct AppStoragePropertyWrapper_Previews: PreviewProvider {
    static var previews: some View {
        AppStoragePropertyWrapper()
    }
}
