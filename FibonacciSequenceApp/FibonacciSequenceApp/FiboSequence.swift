//
//  FiboSequence.swift
//  FibonacciSequenceApp
//
//  Created by CarlosGutierrez on 11/4/14.
//  Copyright (c) 2014 Carlos. All rights reserved.

class FibonacciSequence {
    
    let includesZero: Bool
    let values: [Int] = []
    
    init(maxNumber: Int, includesZero: Bool) {
        self.includesZero = includesZero
        
        var n = 0
        var sum = 0
        var j = 0
        
        if includesZero {
            values.append(0)
            values.append(1)
            
        } else {
            values.append(1)
            values.append(1)
            j = 1
        }
        
        for n = 1; n + j <= maxNumber;  {
            //Make the sum to get the next value
            sum = n + j
            
            //Add the new value to the array values
            values.append(sum)
            
            //Update n in j with new values
            j = n
            n = sum
        }
        
        
        
    }
    
    init(numberOfItemsInSequence: Int, includesZero: Bool) {
        self.includesZero = includesZero
        
        var n = 0
        var j = 0
        var sum = 0
        
        if numberOfItemsInSequence == 0 {
            values = []
        } else if numberOfItemsInSequence == 1 {
            if includesZero {
                values = [0]
            } else {
                values = [1]
            }
        } else {
            var sequence: [Int]
            if includesZero {
                sequence = [0, 1]
                
            } else {
                sequence = [1, 1]
            }
            for n = 2; n < numberOfItemsInSequence; n++ {
                let lastNumber = sequence.last!
                let secondToLastNumber = sequence[sequence.count-2]
                let nextNumber = secondToLastNumber + lastNumber
                sequence.append(nextNumber)
            }
            values = sequence
        }
    }
}



