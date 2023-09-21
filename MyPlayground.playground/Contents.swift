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



var a = (1,"ff")
a.0
var b: ()=()

var valid: Bool?
valid=true
valid=false


//for i in 0...2{
//    print(i)
//}
//for i in 0..<2{
////    print(i)
//}

//1. Reverse the order of the words in the given string.

func reverseString(str:String)->String{
    var newStr=""
      var array = Array(str)
    var i=array.count-1
  
    while i >= 0 {
        newStr.append(array[i])
        i-=1
    }
    return newStr
}

//print(reverseString(str: "hello world"))

//2. Given a array of strings, find the longest common prefix.
func prefix(array:[String])->String{
   var longestPrefix=""
    let numberOfWordsInArray=array.count     //3
    guard let smallestWord = array.min()  else{ //heo
    return " "
    }
    
    for (i,char) in smallestWord.enumerated() {     //h
//          guard var indexOfChar=smallestWord.firstIndex(of: i) else { return "" }
        var count=0  //0
        for word in array{    //hello
            
            if ( word[word.index(word.startIndex, offsetBy: i)] == char){ // h == h
                           count += 1
                       }else {
                        return longestPrefix
                       }
        
       
        }
        if count == numberOfWordsInArray{
            longestPrefix.append(char)
        }
    }
    return longestPrefix
}


print(prefix(array: ["hello", "heee", "heo"])) // This should print "he"



//func test(str: String){
//    var index = str.firstIndex(of: "a")
//    print(index)
//}
//test(array:["hello","hi","h"])
//test(str: "heioadd")
//3. Remove all vowels from String and return remaining string.

func removeVowel(str: String)->String{
    let vowels: [Character]=["a","i","u","e","o"]
    var newStr=""
    for i in str {
//        var isVowel = vowels.contains(i)
        
        if !vowels.contains(i){
            newStr.append(i)
        }
    }
    return newStr
}


//print(removeVowel(str: "hello world"))



//Assignment
//1. find the minimum and maximum elements in array

func minMax(arr: [Int]){
    let minEle = arr.min() 
    let maxEle = arr.max()
    print("min element is \(minEle) and the max element is \(maxEle)")
}
minMax(arr: [1,2,3,4,3])


//2. reverse the array (from scratch)
func reverseArray(arr: [Int])->[Int]{
    var newArray: [Int]=[]
    var i = arr.count-1
    
    while i >= 0 {
        newArray.append(arr[i])
        i-=1
    }
    return newArray
}

print (reverseArray(arr: [1,2,3,4,5]))

//3. sort an array (from scratch)

func sortArray(arr: [Int])->[Int]{
 var sorted=false
    var array=arr
    while !sorted {
        sorted=true
        for i in 0...array.count-1 {
            if i+1 <= arr.count-1 && array[i] > array[i+1]{
                var copy = array[i]
                array[i] = array[i+1]
                array[i+1] = copy
                sorted=false
            }
        }
        
    }
    return array
}

//print(sortArray(arr: [1,62,3,4,5,]))




//4. From a sorted array arr[] and a number x, write a function that counts the occurrences of x in arr[]

func occurrences(arr: [Int] , x: Int) -> Int{
    var count=0
    for i in arr {
        if i == x {
            count+=1
        }
    }
    return count
}


print (occurrences(arr: [1,1,2,3,4,5,6,1,2,454],x: 1))
