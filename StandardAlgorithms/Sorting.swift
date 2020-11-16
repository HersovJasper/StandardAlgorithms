//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Hersov, Jasper (HWTA) on 13/11/2020.
//

import Foundation

class Sorting {
    
    func bubbleSort(data: [Int]) -> [Int] {
        var sortedArray = data
        var swaps = 1
        var index = 0
        var temp = Int()
        while swaps != 0{
            swaps = 0
            index = 0
            while index < sortedArray.count - 1 {
                if sortedArray[index] > sortedArray[index + 1]{
                    temp = sortedArray[index + 1]
                    sortedArray[index + 1] = sortedArray[index]
                    sortedArray[index] = temp
                    swaps += 1
                } else{
                    index += 1
                }
            }
        }
        return sortedArray
    }
    
    func mergeSort(data: [Int]) -> [Int] {
        var sortedArray = data
        return sortedArray
    }
}
