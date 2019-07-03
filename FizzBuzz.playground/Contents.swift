
import Foundation

/*
 A typical round of Fizz Buzz can be:
 
 ====================================================================================
 Write a program that prints the numbers from 1 to 100 and
 for multiples of '3' print "Fizz" instead of the number and
 for the multiples of '5' print "Buzz".
 ------------------------------------------------------------------------------------
 Exmple:
 ####################################################################################
 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14,
 Fizz Buzz, 16, 17, Fizz, 19, Buzz, Fizz, 22, 23, Fizz, Buzz, 26,
 Fizz, 28, 29, Fizz Buzz, 31, 32, Fizz, 34, Buzz, Fizz, ...
 ####################################################################################
 */


var hundredNumbers = [Int]()

for i in 1...100{
    hundredNumbers.append(i)
}

for item in hundredNumbers{
    if item % 15 == 0{
        print("\(item) FizzBuzz")
    }else if item % 3 == 0 {
        print("\(item) Fizz")
    }else if item % 5 == 0 {
        print("\(item) Buzz")
    }else{
        print(item)
    }
}


