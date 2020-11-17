//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Hersov, Jasper (HWTA) on 13/11/2020.
//

import Foundation

class Sorting {
    
    //BUBBLE SORT//
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
    
    
    //MERGE SORT//
    func splitUp(array: [Int]) -> [[Int]] {
      var splitUpArray = [[Int]]()
      for number in array{
        splitUpArray.append([number])
      }
      return splitUpArray
    }
    
    func mergeTogether(array1: [Int], array2: [Int]) -> [Int] {
      var resultingArray = [Int]()
      var index1 = 0
      var index2 = 0
      while index1 < array1.count && index2 < array2.count{
        if array1[index1] <= array2[index2]{
          resultingArray.append(array1[index1])
          index1 += 1
        } else{
          resultingArray.append(array2[index2])
          index2 += 1
        }
      }
      if index1 == array1.count{
        resultingArray.append(contentsOf: array2[index2..<array2.count])
      }
      if index2 == array2.count{
        resultingArray.append(contentsOf: array1[index1..<array1.count])
      }
      return resultingArray
    }

    func mergeSort(data: [Int]) -> [Int] {
      var sortedArray = splitUp(array: data)
      var tempArray: [[Int]]
      var index: Int
      while sortedArray.count > 1{
        tempArray = [[Int]]()
        index = 0
        if sortedArray.count % 2 == 1{
          tempArray.append(sortedArray[0])
          index += 1
        }
        while index < sortedArray.count - 1{
          tempArray.append(mergeTogether(array1: sortedArray[index], array2: sortedArray[index+1]))
          index += 2
        }
        sortedArray = tempArray
      }
      if sortedArray.count == 1 {
        return sortedArray[0]
      }
      return []
    }
    
    
    //INSERTION SORT//
    func insertionSort(data: [Int]) -> [Int]{
      var sortedArray = data
      var index: Int
      var goingBackwards: Int
      var currentItem: Int
      index = 1
      while index < sortedArray.count{
        currentItem = sortedArray[index]
        goingBackwards = 0
        while (index-goingBackwards > 0) && (currentItem < sortedArray[index-goingBackwards-1]){
          goingBackwards += 1
        }
        sortedArray.remove(at: index)
        sortedArray.insert(currentItem, at: index-goingBackwards)
        index += 1
      }
      return sortedArray
    }
    
    
    //QUICK SORT//
    func quickSort(data: [Int]) -> [Int]{
      var sortedArray = [Int]()
      var leftofpivot = [Int]()
      var rightofpivot = [Int]()
      if data.count > 1{
        for item in data[1..<data.count]{
          if item < data[0]{
            leftofpivot.append(item)
          } else{
            rightofpivot.append(item)
          }
        }
        sortedArray.append(contentsOf: quickSort(data: leftofpivot))
        sortedArray.append(data[0])
        sortedArray.append(contentsOf: quickSort(data: rightofpivot))
      } else{
        sortedArray = data
      }
      return sortedArray
    }
    
}
