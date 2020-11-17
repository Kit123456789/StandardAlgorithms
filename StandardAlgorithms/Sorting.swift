//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Ropner, Kit (NA) on 13/11/2020.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int]{
        var sortedData = data
        var swaps = 0
        if sortedData.count > 0{
            outerLoop: for i in 0..<sortedData.count-1{
                swaps = 0
                if sortedData[i] > sortedData[i + 1]{
                    sortedData.insert(sortedData[i], at:i+2)
                    sortedData.remove(at: i)
                    swaps += 1
                }
                if swaps == 0{
                    break outerLoop
                }
               
            }
        }
        else{
            return sortedData
        }
        return sortedData
}
}
