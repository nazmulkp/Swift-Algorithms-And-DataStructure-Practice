import UIKit

let numbers = [1,2,4,5,6,7,8,9,14,18,19,20]

func linearSearchForSearchValue(searchValue:Int,array: [Int])->Bool
{
    var numberOfTimes = 0
    for num in array {
        numberOfTimes += 1
        if num == searchValue{
            print("Number of times \(numberOfTimes)")
            return true
        }
    }
    print("Number of times \(numberOfTimes)")
    return false
}

//worst case
print(linearSearchForSearchValue(searchValue: 20, array: numbers))
//best case
print(linearSearchForSearchValue(searchValue: 2, array: numbers))
