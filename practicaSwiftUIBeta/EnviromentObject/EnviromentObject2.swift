//
//  EnviromentObject2.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 7/5/24.
//

import SwiftUI

struct EnviromentObject2: View {
    var body: some View {
        VStack {
            Text("View 2")
                .padding()
            EnviromentObject3()
        }
    }
}

struct EnviaromentObject2_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObject2()
    }
}
