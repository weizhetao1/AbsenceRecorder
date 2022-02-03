//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Tao, Weizhe (Coll) on 03/02/2022.
//

import XCTest
@testable import AbsenceRecorder

class DivisionTests: XCTestCase {

    func testGetAbsenceDivisionWithAbsenceOnThatDayReturnsAbsence() throws {
        //arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateTomorrow = Date(timeIntervalSinceNow: 100000000000000000)
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let absence1 = Absence(date: dateTomorrow, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)

        //act
        let actual = division.getAbsence(for: dateLaterToday)
        
        //assert
        XCTAssertNotNil(actual)
        if let actualNotNil = actual {
            XCTAssertEqual(actualNotNil.takenOn, absence2.takenOn)
        }
    }

}
