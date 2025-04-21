//
//  ListView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 3/5/24.
//

import SwiftUI

struct Device {
    let title: String
    let imageName: String
}

let house = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3")
]

let work = [
    Device(title: "iphone", imageName: "iphone"),
    Device(title: "iPad", imageName: "ipad"),
    Device(title: "Apple watch", imageName: "applewatch")
]

struct ListView: View {
    var body: some View {
        ZStack {
            Image(decorative:"")
                .resizable()
                .background(Color.green)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                List{
                    Section {
                        ForEach(house, id: \.title) { device in
                            Label(device.title, systemImage: device.imageName)
                                .listRowSeparator(.hidden) //Elimina la barra espaciadora entre elementos. 
                        }
                    } header: {
                        Text("Home")
                    }
                    
                    Section {
                        ForEach(work, id: \.title) { device in
                            Label(device.title, systemImage: device.imageName)
                        }
                    } header: {
                        Text("Work")
                    }
                }
                .listStyle(SidebarListStyle())
             
                //Estilos de listas predeterminados
                .scrollContentBackground(.hidden) // Elimina el background predeterminado de una list.
                
                List(1...10, id: \.self) { item in
                    Text("\(item)")
                        .padding() // Coment to remove padding around the text
                        .background(Color.yellow)
//                        .listRowInsets(EdgeInsets())
//                        .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0)) // Padding in the cell
//                        .listRowBackground(Color.red) // Cambia el color de los recuadros, se puede usar el del fondo para eliminar el blanco.
                }
//                .listStyle(.plain) // Elimina todos los padding de la lista. Con el estilo .grouped se eliminan los padding horizontales.
//                .contentMargins(edge, 0, for: .scrollContent) // uncomment to customize combination of all paddings of the list. (Requires iOS 17)
//                .listStyle(GroupedListStyle())
                
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
