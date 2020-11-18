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
        let unkown = Unknown()
        //act
        let result = unkown.sumFirstAndLast(data: [])
        //assert
        XCTAssertEqual(result, 0)
    }
    func testsumFirstAndLastReturnsNumberTimesTwoIfArrayOnlyHasOneNumber(){
        let unkown = Unknown()
        let result = unkown.sumFirstAndLast(data: [1])
        XCTAssertEqual(result, 2)
    }

}
