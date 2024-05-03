//
//  IconsView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 3/5/24.
//

import SwiftUI

struct IconsView: View {
    var body: some View {
        Image(systemName: "moon.circle.fill")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width: 200)
//            .foregroundColor(.green)
    }
}

struct IconsView_Previews: PreviewProvider {
    static var previews: some View {
        IconsView()
    }
}
