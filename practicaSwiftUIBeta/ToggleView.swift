//
//  ToggleView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct ToggleView: View {
    
    @State var isOn: Bool = false
    var body: some View {
        Form{
            Toggle("Notificaciones", isOn: $isOn) 
            Text("\(isOn.description)")
        }
        
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
