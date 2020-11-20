//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Hersov, Jasper (HWTA) on 13/11/2020.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let expected = [1,3,5,8]
        //act
        let result = sorting.bubbleSort(data: [5,3,1,8])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testBubbleSortWithVariousIntegerArraysReturnsEachOneSorted() {
        //arrange
        let sorting = Sorting()
        let testData = [(data: [6,3,2,9,2], expected: [2,2,3,6,9]),
                        (data: [1,100, -4, 3, 15], expected: [-4,1,3,15,100])]
        //act
        for test in testData {
            let result = sorting.bubbleSort(data: test.data)
            //asswert
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testBubbleSortWithEmptyArrayReturnsEmptyArray() {
        //arrange
        let sorting = Sorting()
        let expected = [Int]()
        //act
        let result = sorting.bubbleSort(data: [])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testMergeSortWithIntegerArrayReturnsSortedArray(){
        //arrange
        let sorting = Sorting()
        let expected = [1,2,3,4]
        //act
        let result = sorting.mergeSort(data: [2,4,3,1])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testMergeSortWithVariousIntegerArraysReturnsEachOneSorted() {
        //arrange
        let sorting = Sorting()
        let testData = [(data: [5,2,6,0], expected: [0,2,5,6]),
                        (data: [-99,-101,12,51,85,3,0,0,4,12,-101], expected: [-101,-101,-99,0,0,3,4,12,12,51,85])]
        //act
        for test in testData {
            let result = sorting.mergeSort(data: test.data)
            //assert
            XCTAssertEqual(result, test.expected)
        }
        
    }
    
    func testMergeSortWithEmptyArrayReturnsEmptyArray() {
        //arrange
        let sorting = Sorting()
        let expected = [Int]()
        //act
        let result = sorting.mergeSort(data: [])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testInsertionSortWithIntegerArrayReturnsSortedArray(){
        //arrange
        let sorting = Sorting()
        let expected = [1,2,3,4]
        //act
        let result = sorting.insertionSort(data: [2,4,3,1])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testInsertionSortWithVariousIntegerArraysReturnsEachOneSorted() {
        //arrange
        let sorting = Sorting()
        let testData = [(data: [5,2,6,0], expected: [0,2,5,6]),
                        (data: [-99,-101,12,51,85,3,0,0,4,12,-101], expected: [-101,-101,-99,0,0,3,4,12,12,51,85])]
        //act
        for test in testData {
            let result = sorting.insertionSort(data: test.data)
            //assert
            XCTAssertEqual(result, test.expected)
        }
        
    }
    
    func testInsertionSortWithEmptyArrayReturnsEmptyArray() {
        //arrange
        let sorting = Sorting()
        let expected = [Int]()
        //act
        let result = sorting.insertionSort(data: [])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testQuickSortWithIntegerArrayReturnsSortedArray(){
        //arrange
        let sorting = Sorting()
        let expected = [1,2,3,4]
        //act
        let result = sorting.quickSort(data: [2,4,3,1])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testQuickSortWithVariousIntegerArraysReturnsEachOneSorted() {
        //arrange
        let sorting = Sorting()
        let testData = [(data: [5,2,6,0], expected: [0,2,5,6]),
                        (data: [-99,-101,12,51,85,3,0,0,4,12,-101], expected: [-101,-101,-99,0,0,3,4,12,12,51,85])]
        //act
        for test in testData {
            let result = sorting.quickSort(data: test.data)
            //assert
            XCTAssertEqual(result, test.expected)
        }
        
    }
    
    func testQuickSortWithEmptyArrayReturnsEmptyArray() {
        //arrange
        let sorting = Sorting()
        let expected = [Int]()
        //act
        let result = sorting.quickSort(data: [])
        //assert
        XCTAssertEqual(result, expected)
    }
    
}
