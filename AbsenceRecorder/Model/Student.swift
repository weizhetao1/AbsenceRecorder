//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Tao, Weizhe (Coll) on 24/01/2022.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
}
