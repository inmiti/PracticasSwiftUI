//
//  LazyVGridView.swift
//  practicaSwiftUIBeta
//
//  Created by ibautista on 3/5/24.
//

import SwiftUI

struct LazyVGridView: View {
    var body: some View {
        let elements = 1...500
        let gridItems = [GridItem(.fixed(100)),
                         GridItem(.fixed(100)),
                         GridItem(.fixed(100))]
//        ScrollView{
//            LazyVGrid(columns: gridItems, content: {
//                ForEach(elements, id: \.self) { element in
//                    VStack{
//                        Circle()
//                            .frame(height: 40)
//                        Text("\(element)")
//                    }
//
//                }
//            })
//        }
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItems, content: {
                ForEach(elements, id: \.self) { element in
                    VStack{
                        Circle()
                            .frame(height: 40)
                        Text("\(element)")
                    }
                    
                }
            })
        }
    }
}

struct LazyVGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridView()
    }
}
