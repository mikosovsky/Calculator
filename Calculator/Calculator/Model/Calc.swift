//
//  Calc.swift
//  Calculator
//
//  Created by Mikołaj Dawczyk on 13/12/2021.
//

import Foundation

class Calc {
    private var value: String
    private var dot: Bool
    private var dot2: Bool
    private var value2: String
    private var deviding: Bool
    private var adding: Bool
    private var differencing: Bool
    private var multiplying: Bool
    
    private func checkState() -> Bool {
        if deviding == false && adding == false && differencing == false && multiplying == false
        {
            return true
        }else
        {
            return false
        }
    }
    
    public func insertNumber(newValue:String) -> String {
        
        if checkState()
        {
            if value.count < 12
            {
                if ((value.count == 1) && (value[value.index(value.startIndex, offsetBy: 0)] == "0")) || value == "Error"
                {
                    value = newValue
            
                }else{
                    value += newValue
                }
            }
            return value
        }else{
            if value2.count < 12
            {
                if ((value2.count == 1) && (value2[value2.index(value2.startIndex, offsetBy: 0)] == "0")) || value2 == value
                {
                    value2 = newValue
                }else{
                    value2 += newValue
                }
            }
            return value2
        }
    }
    
    public func insertDot() -> String {
        if checkState()
        {
        if !dot
        {
        value += "."
        dot = true
        }
        return value
        }else {
            if !dot2
            {
            value2 += "."
            dot2 = true
            }
            return value2
        }
    }
    
    public func changeSign() -> String {
        var newValue = Float(value)!
        newValue = -newValue
        value = String(newValue)
        return value
    }
    
    public func setValueAsZero() -> String {
        value = "0"
        value2 = "0"
        dot = false
        deviding = false
        multiplying = false
        adding = false
        differencing = false
        dot2 = false
        return value
    }
    
    public func goOnPercents() -> String {
        var newValue = Float(value)!
        print(newValue)
        newValue /= 100
        dot = true
        value = String(newValue)
        return value
    }
    
    public func devide() {
        value2 = value
        print(value2)
        print(value)
        deviding = true
        multiplying = false
        adding = false
        differencing = false
    }
    
    public func multiply() {
        value2 = value
        print(value2)
        print(value)
        multiplying = true
        deviding = false
        adding = false
        differencing = false
    }
    
    public func add() {
        value2 = value
        print(value2)
        print(value)
        adding = true
        deviding = false
        multiplying = false
        differencing = false
    }
    
    public func difference() {
        value2 = value
        print(value2)
        print(value)
        differencing = true
        deviding = false
        multiplying = false
        adding = false
    }
    
    public func equation() -> String {
        if value != "Error"
        {
        var newValue = Float(value)!
        if differencing {
            newValue -= Float(value2)!
            value = String(newValue)
            return value
        }else if deviding {
            if Float(value2)! == 0.0
            {
                value = "Error"
                dot = false
                deviding = false
                multiplying = false
                adding = false
                differencing = false
                dot2 = false
            }else{
            newValue /= Float(value2)!
            value = String(newValue)
            }
            return value
        }else if multiplying {
            newValue *= Float(value2)!
            value = String(newValue)
            return value
        }else if adding {
            newValue += Float(value2)!
            value = String(newValue)
            return value
        }else {
            return value
        }}else{
            return value
        }
    }
    
    init(value:String) {
        self.value = value
        self.value2 = "0"
        dot = false
        deviding = false
        multiplying = false
        adding = false
        differencing = false
        dot2 = false
    }
    
}
