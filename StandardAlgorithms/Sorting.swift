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
        let length = sortedData.count - 1
        for i in 0...length{
            if sortedData[i] > sortedData[i + 1]{
                sortedData.insert(sortedData[i], at:i+2)
                sortedData.remove(at: i)
                swaps += 1
            }
        }
        return sortedData
    }
}
