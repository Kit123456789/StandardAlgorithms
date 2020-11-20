//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Ropner, Kit (NA) on 18/11/2020.
//

import Foundation

class Unknown{
    func sumFirstAndLast(data: [Int]) -> Int{
        if data.count > 1{
            return data[0] + data[data.count-1]
        }else if data.count == 1{
            return data[0] * 2
        }
        else{
            return 0
        }
    }
}
