//
//  UnknownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Ropner, Kit (NA) on 18/11/2020.
//

import XCTest

class UnknownTest: XCTestCase {
    func testsumFirstAndLastReturns0WithEmptyArray(){
        //arrange
        let unknown = Unknown()
        //act
        let result = unknown.sumFirstAndLast(data: [])
        //assert
        XCTAssertEqual(result, 0)
    }
    func testsumFirstAndLastReturnsNumberTimesTwoIfArrayOnlyHasOneNumber(){
        let unknown = Unknown()
        let result = unknown.sumFirstAndLast(data: [1])
        XCTAssertEqual(result, 2)
    }
    func testsumFirstAndLastReturnsSumFirstAndLast(){
        let unknown = Unknown()
        let result = unknown.sumFirstAndLast(data: [6,4,10])
        XCTAssertEqual(result, 16)
    }

}
