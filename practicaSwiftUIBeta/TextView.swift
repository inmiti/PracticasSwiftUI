//
//  TextView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 4/5/24.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack{
            // Modificadores mas comunes:
            Text("Hello, World! Suscribete ")
                .font(.largeTitle) // tipo de texto
                .underline() // subrayado
    //            .rotation3DEffect( //rotación del texto 3d
    //                .degrees(60),
    //                axis: (x: 1, y: 0, z: 0)
    //            )
    //            .shadow(color: .gray, radius: 2, x: 0, y: 10) //sombra
    //            .lineLimit(20) //Indica el número de líneas
    //            .lineSpacing(10) //Espaciado entre líneas
    //            .padding()
            
            //Concatenando textos de distintos estilos
            + Text("a mi canal para aprender a programar con swiftui si te gusta el vídeo dale like.")
                .font(.body)
                .foregroundColor(.blue)
//                .fontWidth(.condensed)
//                .fontWidth(.compressed)
//                .fontWidth(.expanded)
                .fontWidth(.standard)
            
            + Text(" Gracias por compartir")
                .font(.headline)
                .foregroundColor(.green)
            
            Text(Date(), style: .date) // Fecha actual
            Text(Date(), style: .timer) //Temporizador
            Text(Date().addingTimeInterval(3600), style: .timer) //Temporizador decremento
            Text(Date(), style: .time) //Hora actual
                .font(.system(size: 28))
        }
        .padding()
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
