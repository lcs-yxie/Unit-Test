//
//  main.swift
//  Unit Test
//
//  Created by Yukun Xie on 2024/9/25.
//

import Foundation

//Setting the range and prompt of the input
let input = getInput(withPrompt: "What is the number?",
                       minimum: 1,
                       maximum: 32500)

//Setting the limit and repeating prompt until valid input
func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    
    // Loop until a valid value is provided
    while true {
        
        // Prompt the user
        print(prompt)
        
        // Collect the input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Convert to an integer
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // If a lowest value for the integer was specified...
        if let minimumValue = minimum {
            
            // ... then check that the given integer is greater than or equal to the lowest desired value.
            guard givenInteger >= minimumValue else {
                continue
            }
            
        }
        
        // If an highest possible value for the integer was specified...
        if let maximumValue = maximum {
            
            // ... then check that the given integer is less than or equal to the highest desired value.
            guard givenInteger <= maximumValue else {
                continue
            }
            
            
        }
        
        // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
        return givenInteger
        
    }
    
}

//Checks if remainder is zero
func isDivisor(dividend: Int, divisor: Int) -> Bool {
    
    //What does this mean???
    return dividend%divisor == 0
}

func sumDivisor(number: Int) -> Int{
    var sum = 0
    for i in 1..<number {
        if isDivisor(dividend: number, divisor: i) {
            sum += i
        }
       
    }
    return sum
}

// Quick tests6
//print(sumDivisor(number: 6))    // 6
//print(sumDivisor(number: input))


func numberType(sum: Int, input: Int) {
    //variable for the sum of all divisors
    if sum > input{
        print("ddd")
    } else if sum == input {
        print("perfect")
    } else if sum < input {
        print("Abundant")
    }
    return
}

let sumOfDivisors = sumDivisor(number: input)

numberType(sum: sumOfDivisors, input: input)
