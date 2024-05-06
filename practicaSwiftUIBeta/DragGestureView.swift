//
//  DragGestureView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct DragGestureView: View {
    @State var dragOffset: CGSize = .zero
    
    var body: some View {
        // Como añadir gestos a nuestra pantalla, por ejemplo mover un rectángulo al mover con el dedo
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .offset(x: dragOffset.width, y: dragOffset.height) // es que va a recibir el valor y va a modificar el rectángulo donde tengamos el dedo.
            .gesture(
                DragGesture() //Escucha la posicion del dedo en la pantalla, es el valor lo que escucha dentro del closure de onChanged
                    .onChanged({ value in // obtengo un location, starLocation y velocity
                        dragOffset = value.translation
                    })
                    .onEnded({ _ in //Que hace cuando dejas de hacer tap
                        withAnimation(.spring()) { // metemos animación para que resulte mas fluido
                            dragOffset = .zero  // cuando sueltas lo pone en la posicion cero.
                        }
                    })
            )
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
