//
//  SwipeActionsView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 29/4/25.
//Para realizar acciones en una lista, arrastrando hacia derecha o izquierda aparecen botones. Refreshable para refrescar la lista de datos cuando vamos hacia abajo.

import SwiftUI

struct DevicesModel {
    let name: String
    let systemImage: String
}

let arrayOfDevices = [
    DevicesModel(name: "iphone", systemImage: "iphone"),
    DevicesModel(name: "ipad", systemImage: "ipad"),
    DevicesModel(name: "ipod", systemImage: "ipod"),
    DevicesModel(name: "pc", systemImage: "pc"),
    DevicesModel(name: "laptop", systemImage: "laptopcomputer"),
    DevicesModel(name: "4k", systemImage: "4k.tv")
]

struct SwipeActionsView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(arrayOfDevices, id: \.name) {device in
                    Label(device.name, systemImage: device.systemImage)
                        .swipeActions {
                            Button {
                                print("Favorito")
                            } label: {
                                Label("Favorito", systemImage: "star.fill")
                            }
                            .tint(.yellow)
                            Button {
                                print("Compartir")
                            } label: {
                                Label("Compartir", systemImage: "square.and.arrow.up.fill")
                            }
                            .tint(.blue)

                        }
                        .swipeActions(edge: .leading) {
                            Button {
                                print("Borrar")
                            } label: {
                                Label("Borrar", systemImage: "trash.fill")
                            }
                            .tint(.red)
                        }
                }
            }
            .refreshable {
                print("Recargar información")
            }
        }
        .navigationTitle("Devices")
    }
}

#Preview {
    SwipeActionsView()
}

