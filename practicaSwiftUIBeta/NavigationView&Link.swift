//
//  NavigationView&Link.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 3/5/24.
//

import SwiftUI

struct NavigationView_Link: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink("Opacion menu 1",
                               destination: Text("Some information"))
                NavigationLink("Opcion menu 2",
                               destination: Button("Tap me", action: {
                    print("Hello iOS developer!!")
                }))
                Text("Opcion menu 1")
                Text("Opcion menu 2")
                Text("Opcion menu 3")
                Text("Opcion menu 4")
            }
            .navigationBarItems(trailing: Button("Done", action: {
                print("NavigationView Button")
            }))
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarHidden(false)
        }
        
    }
}

struct NavigationView_Link_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView_Link()
    }
}
