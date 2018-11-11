//
//  SelectionSort.swift
//  Algorithm
//
//  Created by daniel on 11/12/18.
//

import Foundation

func selectionSort(arr: [Int]) -> [Int] {
    
    var _arr = arr
    
    for i in 0..<_arr.count {
        var min_index = i
        for j in (i+1)..<_arr.count {
            if _arr[j] < _arr[min_index] {
                min_index = j
            }
        }
        _arr.swapAt(i, min_index)
    }
    
    return _arr
    
}
