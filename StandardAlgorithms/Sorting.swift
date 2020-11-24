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
        var sorted = false
        if sortedData.count > 0{
            while sorted == false{
                for i in 0..<sortedData.count-1{
                    if sortedData[i] > sortedData[i + 1]{
                        sortedData.insert(sortedData[i], at:i+2)
                        sortedData.remove(at: i)
                        swaps += 1
                    if swaps == sortedData.count-1{
                        sorted = true
                    }
                    }
            }
            }
        }
        else{
            return sortedData
        }
        return sortedData
    }
/*    func mergeSort(data: [Int]) -> [Int]{
        let sortedData = data
        if sortedData.count > 1{
            let leftHalf = sortedData[0...sortedData.count/2]
            let rightHalf = sortedData[sortedData.count/2...sortedData.count-1]
            if leftHalf.count > 1{
                var remainder = [Int](rightHalf)
                return mergeSort(data: Array(leftHalf))
            }
            if rightHalf.count > 1{
                return mergeSort(data: Array(rightHalf))
            }
        }
        else{
            return sortedData
        }
        
        return sortedData
    }
     func quickSort(data:[Int]) -> [Int]{
        var sortedArray = data
        var leftArray = [Int]()
        var rightArray = [Int]()
        var pivot = sortedArray[0]
        for numbers in sortedArray{
         if numbers < pivot{
           leftArray.append(numbers)
         if numbers > pivot{
           rightArray.append(numbers)
         }
         }
        }
        sortedArray.append(contentsOf: leftArray)
        sortedArray.append(pivot)
        sortedArray.append(contentsOf: rightArray)
        return(quickSort(data: sortedArray))

     }
     */
    func insertionSort(data:[Int]) -> [Int]{
        let unsortedData = data
        var sortedData = [Int](Array(arrayLiteral: unsortedData[0]))
        for i in 0..<unsortedData.count-2{
            if unsortedData[i+1] > sortedData[sortedData.count-1]{
                sortedData.append(unsortedData[i+1])
            }
            else{
                var sorting = false
                var checks = 1
                outerLoop: for j in i..<unsortedData.count-2{
                    if unsortedData[j+1] > sortedData[sortedData.count-2]{
                        sortedData.insert(unsortedData[i+1], at: sortedData.count-checks)
                        sorting = true
                        break outerLoop
                    }
                    checks += 1
                }
                if sorting == false{
                    sortedData.insert(unsortedData[i+1], at: 0)
                }
            }
    }
        loop: for l in 0..<unsortedData.count-1{
            if unsortedData[unsortedData.count-1] > sortedData[l]{
                sortedData.insert(unsortedData[unsortedData.count-1], at: l+2)
                break loop
            }
        }
        return sortedData
}
}
