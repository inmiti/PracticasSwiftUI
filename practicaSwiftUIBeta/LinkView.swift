//
//  LinkView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        VStack {
            Link("Ir a SwiftBeta", destination: URL(string: "https://www.swiftbeta.com")!)
            //Para poder incluir modificadores
            Link(destination: URL(string: UIApplication.openSettingsURLString)!) {
                Label("Settings", systemImage: "gear")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(12)
            }
        }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
