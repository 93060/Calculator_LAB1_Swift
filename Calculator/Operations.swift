//
//  Operations.swift
//  Calculator
//
//  Created by student on 10/10/2023.
//

import Foundation

struct Operations{
    
    func Add(first : Int, second : Int) -> Double {
        return Double (first + second)
    }
    
    func Sub(first : Int, second : Int) -> Double {
        return Double (first - second)
    }
    
    func Multiply(first : Int, second : Int) -> Double {
        return Double (first * second)
    }
    
    func Divide(first : Int, second : Int) -> Double? {
        if second == 0 { return nil }
        return Double (first / second)
    }
    
    func Sin(first : Double) -> Double {
        return sin(first)
    }
}
