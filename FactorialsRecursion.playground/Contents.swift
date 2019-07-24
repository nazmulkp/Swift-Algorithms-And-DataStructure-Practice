import UIKit

//5x4x3x2x1
func factoriaOf(value : UInt)->UInt{
    //fact 0 mean 1 http://mathforum.org/library/drmath/view/57128.html
    if value == 0 {
        return 1
    }
    
    var fact : UInt = 1
    for i in 1...value{
        fact =  fact * i
    }
    return fact
}

//5x4x3x2x1
func recursionFactoriaOf(value : UInt)->UInt{
    //fact 0 mean 1 http://mathforum.org/library/drmath/view/57128.html
    if value == 0 {
        return 1
    }
    //print(value)
    return value * recursionFactoriaOf(value: value - 1)
}

print(recursionFactoriaOf(value: 5))
