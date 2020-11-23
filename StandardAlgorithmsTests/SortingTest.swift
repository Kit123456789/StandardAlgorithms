//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Ropner, Kit (NA) on 13/11/2020.
//
import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedArray(){
        //arrange
        let sorting = Sorting()
        let expected = [1,3,5,8]
        //act
        let result = sorting.bubbleSort(data: [5,1,8,3])
        //assert
        XCTAssertEqual(result, expected)
    }
    func testBubbleSortWithVariousIntegerArraysReturnsEachOneSorted(){
        //arrange
        let sorting = Sorting()
        let testData = [(data: [6,4,1,2,9], expected: [1,2,4,6,9]), (data: [1,100,4,3,15], expected: [1,3,4,15,100]), (data: [], expected: [])]
        //act
        for test in testData{
            let result = sorting.bubbleSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
/*    func testMergeSortWithIntegerArrayReturnsSortedArray(){
        //arrange
        let sorting = Sorting()
        let expected = [1,3,4,5,6,10,13,32]
        //act
        let result = sorting.mergeSort(data: [5,4,3,6,32,10,1,13])
        //assert
        XCTAssertEqual(result, expected)
    }
     func testQuickSortWithIntegerArrayReturnsSortedArray(){
             //arrange
             let sorting = Sorting()
             let expected = [2,3,5,7,9]
             //act
             let result = sorting.quickSort(data: [7,3,9,2,5])
             //assert
             XCTAssertEqual(result, expected)
         }
 */
     func testInsertionSortWithIntegerArrayReturnsSortedArray(){
             //arrange
             let sorting = Sorting()
             let expected = [2,4,6,8,10,12]
             //act
             let result = sorting.insertionSort(data: [2,8,12,4,10,6])
             //assert
             XCTAssertEqual(result, expected)
         }
}
