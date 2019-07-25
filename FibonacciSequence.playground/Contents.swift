import UIKit

func fibonacciSequenceNumberOf(steps : Int) ->[Int]{
    var sequence = [0,1]
    for _ in 0..<steps{
        let first = sequence[sequence.count - 2]
        let last = sequence.last!
        
        sequence.append(first + last)
    }
    return sequence
}

print(fibonacciSequenceNumberOf(steps: 10))
