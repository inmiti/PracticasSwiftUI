//
//  ContentView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 3/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 8
            ) {
                Text("Siguiendo")
                    .font(.largeTitle)
                    .bold()
                Text("CANALES RECOMENDADOS")
                    .foregroundColor(.gray)
                HStack {
                    Rectangle()
                        .foregroundColor(.blue)
                    .frame(width: 118, height: 68)
                    VStack(alignment: .leading) {
                        HStack {
                            Circle()
                                .frame(width: 18, height: 18)
                                .foregroundColor(.blue)
                            
                            Text("username")
                                .font(.headline)
                        }
                        Text("streaming de programación...")
                            .foregroundColor(.gray)
                        Text("Solo hablando")
                            .foregroundColor(.gray )
                    }
                }
            }
            Text("Suscribiros a SwiftBeta")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.red)
                .underline()
                .background(Color.black)
                .rotationEffect(.degrees(-20))
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
