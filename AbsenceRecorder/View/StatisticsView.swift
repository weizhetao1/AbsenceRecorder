//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Tao, Weizhe (Coll) on 01/02/2022.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    
    var body: some View {
        Text("Number of divisions: \(state.divisions.count)")
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
