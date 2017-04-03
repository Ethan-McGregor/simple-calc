//  main.swift
//  SimpleCalc
//
//  Created by studentuser on 4/3/17.
//  Copyright © 2017 Ethan.McGregor. All rights reserved.


import Foundation

var goAgian: Bool = true;

while goAgian {
    var askAgain: Bool = true
    
    var moreInput: Bool = true
    var inputString: [String] = []
    var result = 0
    var sum = 0
    
    print("Please enter a number, or expression with elemetns sperated by RETURNS. e.g: \r2\r+\r2\r\r")
    
    
    
    while moreInput {
        inputString.append(readLine(strippingNewline: true)!)
         var count = inputString.count
         var symbol = String(inputString[count - 1])
        if (count == 3) {
            symbol = String(inputString[count - 2])
            if (symbol == "+" || symbol == "-" || symbol == "*" || symbol == "/" || symbol == "%"){
                
                moreInput = false
                var one = Int(inputString[0])
                var two = Int(inputString[2])
                if (inputString[1] == "+"){
            
                    result = one! + two!
                } else if (inputString[1] == "-") {
                    result = one! - two!
                } else if (inputString[1] == "/") {
                    result = one! / two!
                } else if (inputString[1] == "%"){
                    result = one! % two!
                } else if (inputString[1] == "*") {
                    result = one! * two!
                }
                
                sum = result
                print("Result: " + String(sum))

            }
        }
        
        if (symbol == "count") {
            moreInput = false
            sum = inputString.count - 1
            print("Result: " + String(sum))
        }
        
        if (symbol == "avg") {
            moreInput = false
            var numinputString = inputString.count - 2
            var add = 0
            for int in 1...numinputString {
                add += Int(inputString[int])!
            }
            result = add / numinputString
            sum = result
            print("Result: " + String(sum))
        }
        
        if (symbol == "fact") {
            moreInput = false
            var bound = Int(inputString[0])
            var numToMult = bound
            sum = 1
            
            while (numToMult != 0) {
                sum *= numToMult!
                numToMult = numToMult! - 1
            }
              print("Result: " + String(sum))
        }
        
    }
    
  
    print("Would you like to go agian? (y/n)")
    if(readLine(strippingNewline: true) == "y"){
        goAgian = true;
    }else{
        goAgian = false;
    }
}


