//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Hersov, Jasper (HWTA) on 18/11/2020.
//

import Foundation

class Unknown {
    
    func sumFirstAndLast(data: [Int]) -> Int{
        if data.count == 0{
            return 0
        } else if data.count == 1{
            return data[0]*2
        } else{
            return data[0] + data[data.count-1]
        }
    }
    
    
}
