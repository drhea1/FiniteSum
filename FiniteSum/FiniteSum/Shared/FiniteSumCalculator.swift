//
//  FiniteSumCalculator.swift
//  FiniteSum
//
//  Created by Derek Rhea on 2/8/21.
//

import SwiftUI

class FiniteSumCalculator: NSObject, ObservableObject {

    @Published var sumResult1: Double = 1.0
    @Published var sumResult2: Double = 1.0
    @Published var sumResult3: Double = 1.0
    @Published var sumUpResult: Double = 1.0
    @Published var sumDownResult: Double = 1.0
    @Published var totalIncrements: Int = 1
    
    func setNumberOfN(incr: Int){
        totalIncrements = incr
    }
    
    
    
    
//    1     __ 2N          n    n
//   S  =  \         ( - 1)   -----
//    N    /__ n = 1          n + 1
    
    
    func sumFunction1() {
        var individualValues = [-0.5,(2.0/3.0)]
        //var n: Double = 1.0
        
        if totalIncrements > 1 {
            
            let sumRange = 3...(2*totalIncrements)
            
            for n in sumRange {
                let currentValue = (pow(-1.0,Double(n))*(Double(n)/(Double(n)+1.0)))
                individualValues.append(currentValue)
            }
        }
        
        sumResult1 = individualValues.reduce(0,+)
        //print("Total = " + String(total))
        //print("All individual values = ", individualValues)
        
    }
    
    
    
    
    
    
//    2        __ N     2n - 1       __ N        2n
//   S  =   - \         ------  +   \          ------
//    N       /__ n = 1   2n        /__ n = 1  2n + 1

    
    func sumFunction2() {
        var individualValues = [(1.0/6.0)]
        
        
        if totalIncrements > 1 {
            
            let sumRange = 2...totalIncrements
            
            for n in sumRange {
                let currentValue = ((2.0*Double(n)) / (2.0*Double(n) + 1.0)) - ((2.0*Double(n)-1.0) / (2.0*Double(n)))
                individualValues.append(currentValue)
            }
        }
        sumResult2 = individualValues.reduce(0,+)
        //print("Total = " + String(total))
        //print("All individual values = ", individualValues)
    }

    
    
    
    
    
//    3     __ N          1
//   S  =  \         ----------
//    N    /__ n = 1 2n(2n + 1)
    

    func sumFunction3() {
        var individualValues = [(1.0/6.0)]
        
        if totalIncrements > 1 {
            
            let sumRange = 2...totalIncrements
        
            for n in sumRange {
                let currentValue = 1.0 / (2.0*Double(n)*(2.0*Double(n) + 1.0))
                individualValues.append(currentValue)
            }
        }
        sumResult3 = individualValues.reduce(0,+)
        
    }

//    up       __ N      1
//   S    =   \          -
//            /__ n = 1  n
    
    
    func sumUp() {
        var individualValues = [1.0]
        
        if totalIncrements > 1 {
            let sumRange = 2...totalIncrements
            
            for n in sumRange {
                let currentValue = 1.0 / Double(n)
                individualValues.append(currentValue)
            }
        }
        
        sumUpResult = individualValues.reduce(0,+)
        
    }
    
    
    
//    down       __ 1      1
//   S      =   \          -
//              /__ n = N  n
    
    
    func sumDown() {
        var individualValues = [1.0]
        
        if totalIncrements > 1 {
            let sumRange = 2...totalIncrements
            
            for n in sumRange.reversed() {
                let currentValue = 1.0 / Double(n)
                let currentPosition = totalIncrements - n
                individualValues.insert(currentValue, at: currentPosition)
            }
        }
        
        sumUpResult = individualValues.reduce(0,+)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    

}
