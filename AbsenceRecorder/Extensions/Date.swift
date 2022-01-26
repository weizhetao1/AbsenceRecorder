//
//  Date.swift
//  AbsenceRecorder
//
//  Created by Tao, Weizhe (Coll) on 26/01/2022.
//

import Foundation

extension Date {
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
}
