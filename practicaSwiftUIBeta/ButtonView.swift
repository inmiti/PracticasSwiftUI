//
//  ButtonView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 4/5/24.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack{
            //Button action - label
            Button {
                print("Suscríbete a swiftbeta")
            } label: {
                Text("Suscríbete".uppercased()) //Para diseñar el botón
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                
            }
            //Button title - action son iguales
            Button("Suscríbete") {
                print("Suscríbete a Swiftbeta")
            }
            
            //Otros modificadores
            Button(action: {
                print("Dale like")
            }, label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 70, weight: .bold))
                    )
            })
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
