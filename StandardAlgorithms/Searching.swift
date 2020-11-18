//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Hersov, Jasper (HWTA) on 17/11/2020.
//

import Foundation

class Searching {
    
    //LINEAR SEARCH//
    func linearSearch(data: [Int], value: Int) -> Bool{
      for number in data{
        if number == value{
          return true
        }
      }
      return false
    }
    
    
    //BINARY SEARCH//
    func binarySearch(data: [Int], value: Int) -> Bool{
      var lowerBound = 0
      var upperBound = data.count - 1
      var midpoint: Int
      while lowerBound <= upperBound{
        midpoint = (lowerBound + upperBound)/2
        if data[midpoint] == value {
          return true
        } else if data[midpoint] < value  {
          lowerBound = midpoint + 1
        } else{
          upperBound = midpoint - 1
        }
      }
      return false
    }
    
}
