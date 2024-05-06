//
//  DatePickerView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct DatePickerView: View {
    
    @State var currentDate: Date = Date()
    var body: some View {
        VStack {
//            DatePicker("Selecciona flecha", selection: $currentDate)
//                .datePickerStyle(GraphicalDatePickerStyle())
//            .datePickerStyle(WheelDatePickerStyle()) //Selecciona como si fuera una rueda
            
            //Si queremos que solo pueda seleccionarse fechas de hoy en adelante usamos este inicializador:
            Form{
                DatePicker("Fecha",
                           selection: $currentDate,
                           in: Date()..., //desde hoy a futuro
                           displayedComponents: .date) //componentes que queremos mostrar solo fecha, horas, etc..
                Text(currentDate, style: .date) //Detro de text podemos meter fechas y editar estilos de forma facil.
                    .bold()
            }
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
