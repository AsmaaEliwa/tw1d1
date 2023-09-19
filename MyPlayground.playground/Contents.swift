import UIKit

var greeting = "Hello, playground"
//let myName = "asmaa"

func printName( name: String){
    for i in 0..<22{
        print(name)

    }
}
//printName(name:"asmaa")
func addTwoNumbers(firstNumber: Int, to secondNumber: Int)-> Int{
    let sum = firstNumber + secondNumber
    return sum
}
//print( addTwoNumbers(firstNumber: 1 , to: 5))


var array = [2,1,5,3,8,6,9,0,12]
//array.sort()
//array.reverse()
//array.append(3)
array.insert(7, at: 3)
print(array)
