import UIKit


/*
 Fibonacci Sequence. The Fibonacci Sequence is the series of numbers: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ... The next number is found by adding up the two numbers before it.
 */

//test code area start

let numberOfStep = 10

//test code area end


func fibonacciSequenceNumberOf(steps : Int) ->[Int]{
    var sequence = [0,1]
    if steps == 0 {
        return  []
    }
    if steps <= 1{
        return sequence
    }
    for _ in 0..<steps{
        let first = sequence[sequence.count - 2]
        let last = sequence.last!
        
        sequence.append(first + last)
    }
    return sequence
}


func recursionForFibonacciSequenceNumberOf(_ steps : Int,first : Int ,second:Int) -> [Int]{
    if steps == 0{
      return []
    }
 
    return [first + second] + recursionForFibonacciSequenceNumberOf(steps - 1, first: second, second: first+second)
}

print("######Fibonacci Sequence Number Of Steps######")
print(fibonacciSequenceNumberOf(steps: numberOfStep))
print("######Recursion For Fibonacci Sequence Number Of Steps######")
print(recursionForFibonacciSequenceNumberOf(numberOfStep,first: 0,second: 1)
)
