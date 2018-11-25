//
//  SelectionSort.swift
//  Algorithm
//
//  Created by daniel on 11/12/18.
//

import Foundation

public func selectionSort<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
    guard array.count > 1 else { return array }
    var a = array
    for x in 0 ..< a.count - 1 {
        var lowest = x
        for y in x + 1 ..< a.count {
            if isOrderedBefore(a[y], a[lowest]) {
                lowest = y
            }
        }
        if x != lowest {
            a.swapAt(x, lowest)
        }
    }
    return a
}
