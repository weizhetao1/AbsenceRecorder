//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Tao, Weizhe (Coll) on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
    let examples: [Division]
    var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(examples, id: \.self.code) { division in
                Text(division.code)
                    .padding()
            }
            .navigationTitle(currentDate.getShortDate())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(examples: Division.examples)
    }
}
