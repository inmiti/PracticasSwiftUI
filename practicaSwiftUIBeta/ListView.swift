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
        List{
            Section {
                ForEach(house, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
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
        .listStyle(SidebarListStyle()) //Estilos de listas predeterminados
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
