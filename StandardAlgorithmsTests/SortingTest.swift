//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Hersov, Jasper (HWTA) on 13/11/2020.
//

import XCTest

class SortingTest: XCTestCase {

    func testSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let expected = [1,3,5,8]
        //act
        let result = sorting.bubbleSort(data: [5,3,1,8])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testSortWithVariousIntegerArraysReturnsEachOneSorted() {
        //arrange
        let sorting = Sorting()
        let testData = [(data: [6,3,2,9,2], expected: [2,2,3,6,9]),
                        (data: [1,100, 4, 3, 15], expected: [1,3,4,15,100])]
        //act
        for test in testData {
            let result = sorting.bubbleSort(data: test.data)
            //asswert
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testSortWithEmptyArrayReturnsEmptyArray() {
        //arrange
        let sorting = Sorting()
        let expected = [Int]()
        //act
        let result = sorting.bubbleSort(data: [])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    
}
