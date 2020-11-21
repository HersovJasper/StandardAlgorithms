//
//  SearchingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Hersov, Jasper (HWTA) on 17/11/2020.
//

import XCTest

class SearchingTest: XCTestCase {

    
    func testLinearSearchWithEmptyArrayReturnsFalse() {
        //arrange
        let searching = Searching()
        let expected = false
        //act
        let result = searching.linearSearch(data: [], value: 7)
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testLinearSearchWithVariousIntegerArraysReturnsBoolean() {
        //arrange
        let searching = Searching()
        let testData = [(data: [6,3,2,9,2], value: 9, expected: true),
                        (data: [1,100, -4, 3, 15], value: 17, expected: false)]
        //act
        for test in testData {
            let result = searching.linearSearch(data: test.data, value: test.value)
            //asswert
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testBinarySearchWithEmptyArrayReturnsFalse() {
        //arrange
        let searching = Searching()
        let expected = false
        //act
        let result = searching.binarySearch(data: [], value: 7)
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testBinarySearchWithVariousIntegerArraysReturnsBoolean() {
        //arrange
        let searching = Searching()
        let testData = [(data: [6,3,2,9,2], value: 9, expected: true),
                        (data: [1,100, -4, 3, 15], value: 17, expected: false)]
        //act
        for test in testData {
            let result = searching.binarySearch(data: test.data, value: test.value)
            //asswert
            XCTAssertEqual(result, test.expected)
        }
    }

    
}
