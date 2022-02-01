//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Tao, Weizhe (Coll) on 01/02/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
