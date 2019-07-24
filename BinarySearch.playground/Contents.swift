import UIKit

//test code area start
//let numbers = [1,2,4,5,6,7,8,9,14,18,19,20]
var numbers = [Int]()
for i in 0..<100{
    numbers.append(i)
}
let searchValue = 99

//test code area end

func printInfo(_ numberOfTimes : Int, searchValue : Int){
    print("Number of times: \(numberOfTimes) search for: \(searchValue)")
}

/*
 Linear search is a very basic and simple search algorithm. In Linear search, we search an element or value in a given array by traversing the array from the starting, till the desired element or value is found.
 */
func linearSearchForSearchValue(searchValue:Int,array: [Int])->Bool
{
    var numberOfTimes = 0
    for num in array {
        numberOfTimes += 1
        if num == searchValue{
            printInfo(numberOfTimes,searchValue: searchValue)
            return true
        }
    }
    printInfo(numberOfTimes,searchValue: searchValue)
    return false
}


/*
 In computer science, binary search, also known as half-interval search, logarithmic search, or binary chop, is a search algorithm that finds the position of a target value within a sorted array.
 */
func binarySearchForSearchValue(searchValue:Int,array: [Int])->Bool
{
    var leftIndex  = 0
    var rightIndex = array.count - 1
    var numberOfTimes = 0
    while leftIndex <= rightIndex  {
        numberOfTimes += 1
        let middleIndex = (rightIndex + leftIndex)/2
        let middleValue = array[middleIndex]
        
        print("Number of times: \(numberOfTimes), search for: \(searchValue), middleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), ArrayRange: [\(array[leftIndex]),\(array[rightIndex])]")
        
        if searchValue == middleValue{
            return true
        }
        
        if searchValue < middleValue {
           rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue{
            leftIndex = middleIndex + 1
        }
    }
    return false
}

print("#########################Linear Search#####################")
print(linearSearchForSearchValue(searchValue: searchValue, array: numbers))
print("#########################Binary Search#####################")
print(binarySearchForSearchValue(searchValue: searchValue, array: numbers))

