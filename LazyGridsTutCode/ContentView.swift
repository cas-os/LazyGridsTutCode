//
//  ContentView.swift
//  LazyGridsTutCode
//
//  Created by HAL-9001 on 28/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
//            Rectangle()
//                .fill(Color.white)
//                .frame(height: 240)
//            LazyVGrid(columns: [GridItem(.fixed(50))], alignment: .center, spacing: nil, pinnedViews: [], content: {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 200)
            
            LazyVGrid(columns: columns, alignment: .center, spacing: 6, pinnedViews: [], content: {
                Section(header:
                            Text("Section 1")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.blue)
                            .padding()
                ) {
                
                    ForEach(0..<50) { index in
                        Rectangle()
                            .frame(height: 50)
                    }}
                
                Section(header:
                            Text("Section 2")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.red)
                            .padding()
                ) {
                
                    ForEach(0..<50) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 50)
                    }}
            })

//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 115)
//                }
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
