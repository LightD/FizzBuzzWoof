//
//  main.swift
//  fizzbuzzwoof
//
//  Created by Light Dream on 16/12/2016.
//  Copyright © 2016 kfit. All rights reserved.
//

import Foundation

// and extension that counts the occurances of a substring in Self (the current string)
extension String {
    public func count(of string: String) -> Int {
        return components(separatedBy: string).count - 1
    }
}

for index in 1...100 {
    var valuesArray: [String] = []
    
    if index % 3 == 0 {
        valuesArray.append("Fizz")
        let count3 = String(index).count(of: "3")
        for innerIndex in 0..<count3 { valuesArray.append("Fizz") }
    }
    
    if index % 5 == 0 {
        valuesArray.append("Buzz")
        let count5 = String(index).count(of: "5")
        for innerIndex in 0..<count5 { valuesArray.append("Buzz") }
    }
    
    if index % 7 == 0 {
        valuesArray.append("Woof")
        
        let count7 = String(index).count(of: "7")
        for innerIndex in 0..<count7 { valuesArray.append("Woof") }
    }
    if valuesArray.count == 0 { valuesArray.append("\(index)") }
    let printableString = valuesArray.joined(separator: " ")
    print("\(index): \(printableString)")
}
