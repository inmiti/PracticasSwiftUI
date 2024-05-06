//
//  TexteditorView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 6/5/24.
//

import SwiftUI

struct TexteditorView: View {
    @State var text = "Escribe algo ..."
    @State var counter = 0
    
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .font(.title)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .foregroundColor(.blue)
                .padding()
                .onChange(of: text, perform: {value in
                    counter = value.count
                })
            Text("\(counter)")
                .foregroundColor(counter <= 280 ? .green : .red)
                .font(.largeTitle)
        }
    }
}

struct TexteditorView_Previews: PreviewProvider {
    static var previews: some View {
        TexteditorView()
    }
}
