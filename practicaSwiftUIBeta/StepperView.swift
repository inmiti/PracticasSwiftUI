//
//  StepperView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct StepperView: View {
    @State var iPhoneCounter: Int = 1
    var body: some View {
        
        // Para aumentar el valor
        VStack{
            Form{
                Stepper("iphone \(iPhoneCounter)",
                        value: $iPhoneCounter,
                        in: 1...5,
                        step: 2)
            }
            
            Form{
                Stepper("iPhone \(iPhoneCounter)", onIncrement: {
                    iPhoneCounter += 1
                    print("Incrementar número \(iPhoneCounter)")
                }, onDecrement: {
                    iPhoneCounter -= 1
                    print("Decrementar número \(iPhoneCounter)")
                })
            }
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
