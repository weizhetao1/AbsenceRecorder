//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Tao, Weizhe (Coll) on 24/01/2022.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    //#if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size{
            division.students.append(Student(forename: "Forename \(i)", surname: "Surname \(i)", birthday: Date()))
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 8),
                           Division.createDivision(code: "vCX-1", of: 11),
                           Division.createDivision(code: "vE5-2", of: 18),
                           Division.createDivision(code: "vD2-1", of: 16),]
    //#endif
    
}
