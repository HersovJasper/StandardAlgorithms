//
//  UnknownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Hersov, Jasper (HWTA) on 18/11/2020.
//

import XCTest

class UnknownTest: XCTestCase {

    func testSumFirstAndLastWithEmptyArrayReturnsZero() {
        //arrange
        let unknown = Unknown()
        //act
        let testData = [Int]()
        let result = unknown.sumFirstAndLast(data: testData)
        let expected = 0
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testSumFirstAndLastWithSingleIntegerArrayReturnsDoubleTheInteger() {
        //arrange
        let unknown = Unknown ()
        //act
        let testData = [(data: [1], expected: 2),
                        (data: [0], expected: 0),
                        (data: [-17], expected: -34)]
        //assert
        for test in testData {
            let result = unknown.sumFirstAndLast(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testSumFirstAndLastWithVariousIntegerArraysReturnsFirstPlusLast() {
        //arrange
        let unknown = Unknown()
        //act
        let testData = [(data: [1,2,4], expected: 5),
                        (data: [3,5,3,45,4,3,2,4,2,1,-11], expected: -8)]
        //assert
        for test in testData {
            let result = unknown.sumFirstAndLast(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
}
