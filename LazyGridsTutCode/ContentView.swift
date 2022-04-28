//
//  ContentView.swift
//  LazyGridsTutCode
//
//  Created by HAL-9001 on 28/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    let columns: [GridItem] = [
        GridItem(.fixed(250), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
