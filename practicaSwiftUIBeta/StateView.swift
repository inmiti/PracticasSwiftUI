//
//  StateView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 3/5/24.
//

import SwiftUI

struct StateView: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Counter \(counter)")
                .font(.largeTitle)
            Button("Incrementar valor") {
                self.counter += 1
            }
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
