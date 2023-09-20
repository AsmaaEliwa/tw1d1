import UIKit

var greeting = "Hello, playground"
//let myName = "asmaa"

func printName( name: String){
    for _ in 0..<22{
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
//array.last
//array.insert(7, at: 3)
//print(array)


var arr : [Int]=[1]
var last = arr.last
//var last =  arr.last ?? 3


if let ele=last {
    print("the last ele is \(ele)")
}else{
    print("you have no studients")
}




class Car{
    var name: String?
    var price: Int?
    init(){}
    init(name: String,  price: Int){
        self.name = name
        self.price = price
    }
    func sound(){
        print("hhhhhhh")
    }

}

let bm = Car(name: "BM", price: 27000)
bm.name

let ww=Car()
ww.sound()

class Developer{
    var name: String
    var age: Int
    
    init(name: String,  age: Int){
        self.name=name
        self.age=age
    }
    func sayName(){
        print(name)
    }

}

let firstDeceloper = Developer(name: "asmaa", age: 27)
firstDeceloper.sayName()

class iosDeveloper: Developer {
    var frameWork: String?
    override func sayName() {
        print("\(name) is an IOS developer")
    }
    
}

let ali = iosDeveloper(name:"ali", age: 33)


ali.sayName()
