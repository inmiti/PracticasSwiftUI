//
//  FormView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 3/5/24.
//

import SwiftUI

struct FormView: View {
    
    @State var deviceName: String = "iPhone 14 Pro Max"
    @State var isNetworkOn: Bool = true
    @State var date: Date = Date()
    @State var color: Color = .blue
    var body: some View {
        Form{
            Section(header: Text("Settings")) {
                TextField("Device Name", text: $deviceName)
                Toggle("Wi-Fi", isOn: $isNetworkOn)
            }
            Section {
                DatePicker("Date", selection: $date)
                ColorPicker("Color", selection: $color)
            } header: {
                Text("Account")
            } footer: {
                HStack{
                    Spacer()
                    Label("version 1.0", systemImage: "iphone")
                    Spacer()
                }
            }

            
            
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
