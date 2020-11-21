//
//  SortingPerformanceTest.swift
//  StandardAlgorithmsTests
//
//  Created by Hersov, Jasper (HWTA) on 20/11/2020.
//

import XCTest

class SortingPerformanceTest: XCTestCase {


    let sorting = Sorting()
    
    var testData5: [Int] = []
    var testData50: [Int] = []
    var testData500: [Int] = []
    var testDataLarge: [Int] = []
    
    func generateRandomArray(size n: Int) -> [Int] {
        var generatedArray = [Int]()
        for _ in 1...n{
            generatedArray.append(Int.random(in: 1..<256))
        }
        return generatedArray
    }
    
    override func setUpWithError() throws {
        testData5 = generateRandomArray(size: 5)
        testData50 = generateRandomArray(size: 50)
        testData500 = generateRandomArray(size: 500)
        testDataLarge = generateRandomArray(size: 5000)
    }

    override func tearDownWithError() throws {
        testData5 = []
        testData50 = []
        testData500 = []
        testDataLarge = []
    }

    //
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        //self.measure {
            // Put the code you want to measure the time of here.
        //}
    }
    
    
    //Performance Tests//
    
    func testBubbleSortWith5IntegerArray() {
        measure {
            _ = sorting.bubbleSort(data: testData5)
        }
    }
    
    func testMergeSortWith5IntegerArray() {
        measure {
            _ = sorting.mergeSort(data: testData5)
        }
    }
    
    func testInsertionSortWith5IntegerArray() {
        measure {
            _ = sorting.insertionSort(data: testData5)
        }
    }
        
    func testQuickSortWith5IntegerArray() {
        measure {
            _ = sorting.quickSort(data: testData5)
        }
    }
    
    func testBubbleSortWith50IntegerArray() {
        measure {
            _ = sorting.bubbleSort(data: testData50)
        }
    }
    
    func testMergeSortWith50IntegerArray() {
        measure {
            _ = sorting.mergeSort(data: testData50)
        }
    }
    
    func testInsertionSortWith50IntegerArray() {
        measure {
            _ = sorting.insertionSort(data: testData50)
        }
    }
        
    func testQuickSortWith50IntegerArray() {
        measure {
            _ = sorting.quickSort(data: testData50)
        }
    }
    
    func testBubbleSortWith500IntegerArray() {
        measure {
            _ = sorting.bubbleSort(data: testData500)
        }
    }
    
    func testMergeSortWith500IntegerArray() {
        measure {
            _ = sorting.mergeSort(data: testData500)
        }
    }
    
    func testInsertionSortWith500IntegerArray() {
        measure {
            _ = sorting.insertionSort(data: testData500)
        }
    }
        
    func testQuickSortWith500IntegerArray() {
        measure {
            _ = sorting.quickSort(data: testData500)
        }
    }

 
}
