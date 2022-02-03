//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Tao, Weizhe (Coll) on 03/02/2022.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool
    
    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student(forename: "Roberto", surname: "Baggio", birthday: Date()))
    #endif
}
