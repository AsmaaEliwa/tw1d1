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


var names=["ali","asmaa","saif","max","adam"]
for name in names[...2]{
    print(name)
}
for name in names[2...]{
    print(name)
}

var arr1 = [1,2,3,4,5,6,7,8]
arr1.first {$0 > 3
}
//example of optional binding

let name :String? = "max"
if let myName = name {
    print(myName)
}else {
    return
}


func printName(name :String?){
    guard let myName = name else{
        return
    }
}


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

print(sortArray(arr: [1,62,3,4,5,]))




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

///value type

var e = 0
var l = a
l=3
print (e)



//Assignment 3
//1. You have an array of N integers, and an integer K, the task is to find the number of pairs of integers in the array whose sum is equal to K.
func numberOfPairs(arr: [Int], k: Int)->Int{
   var count=0
    for x in arr {
        for i in x..<arr.count{
            if i>x && i+x == k {
                count+=1
            }
        }
    }
    return count
}
print (numberOfPairs(arr:[1,2,3,4,5,6,-3,-2] , k: 3))




//2. You have  a sorted and rotated array arr[] of size N and a key, the task is to find the key in the array.
func findIndex(arr: [Int], k: Int)->[Int]{
    var holder: [Int]=[]
    for (idx , num )in arr.enumerated() {
        if num == k {
            holder.append(idx)
        }
    }
    return holder
}

print(findIndex(arr:[1,2,3,2,4,5,6,3,2,1], k: 3))

#fileLiteral(resourceName: "leetcode")


//Assignment4
//1. find all the elements occurring more than once in the given array
func mostSeen(_ arr:[Int])->Any{
    var holder: [Int] = []
    var dic: [Int: Int] = [:]
    for i in arr {
        if let count = dic[i] {//checking if the dictionary has the ele as a key
            dic[i] = count + 1
        }else {  // if not then we add the ele as a key with the value =1
            dic[i] = 1
        }
    }
    for (k,v) in dic{
        if v >= 2 {
            holder.append(k)
        }
    }
    return holder
}

print(mostSeen([1,2,3,4,12,1,3,4])) //time complixity  O(n)

//2. No negative. The task is to check if N is a power of 2. More formally, check if N can be expressed as 2x for some integer x. Return true if N is power of 2 else return false
//
func powerChecker(_ n: Int)-> Bool {
    for i in 1..<n-1 {
        var c=1
        for e in 1..<i {   // power generator
            c *= 2
        }
//        print(c)
        if( c == n  ){
            return true
        }
    }
    return false
}

print(powerChecker(64)).  //time complixity  O(n^2)


//Assignment 5
//1. Given a string str, return the longest
//palindromic substring in str.

func substrings(_ str: String)-> [String]{
    var holder: [String] = []   //this will hold all the subs
    for i in 0..<str.count{      // itrating on the indices  in the string
        for j in ( i + 1 )...str.count{     // second itration to get the subs
            var startIndex = str.index(str.startIndex, offsetBy: i) // this how we get the start index of the sub
            var endIndex = str.index(startIndex, offsetBy: j - i) // the last index for the sub
            if  endIndex <= str.endIndex { // making sure the index isn’t  out the pounders
            holder.append(String(str[startIndex..<endIndex])) // pushing the sun in the holder
       
            }
            
        }
    }
    return holder
}
print(substrings("hello"))

func palindromic(_ str:String)-> String{
    let substrings = substrings(str)    // to get all the subs for this string
    var holder: [String]=[]       // to hold the palindromic ones
    for sub in substrings{            // itrating on the substrings  to check if they are   palindromic
        if sub == String(sub.reversed()){
            holder.append(sub)  // if yes then we push it in the holder
        }
    }
    return holder.max{ $0.count < $1.count } ?? "no palindromic"   // we return the longest one if any if not that means there is non  "no palindromic"  will be returned
}

print (palindromic("hello")) // this will print "ll"


//2. Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0. Notice that the solution set must not contain duplicate triplets.
func uniqueTriplets(_ arr: [Int])-> [[Int]]{
    var holder: [[Int]] = []   //nested array this will hold all the uniqueTriplets
    for i in 0..<arr.count-2{      // itrating on the indices  in the arr to get the first ele
        for j in ( i + 1 )...arr.count-1{    // itrating on the indices  in the arr to get the second  ele
            for k in (j + 1)..<arr.count {   // itrating on the indices  in the arr to get the third  ele
               let triplet = [arr[i], arr[j], arr[k]]
                   if triplet.count == 3 && triplet.reduce(0, +) == 0 && Set(triplet).count == 3{  //checking that they are 3  and the sum = 0 , unique by converting the 3 element to a set (which must be unique)
                       holder.append(triplet)
                   }
            }
            
        }
    }
    return holder
}
print(uniqueTriplets([1,2,3,4,5,6,7,8,-1,0,-1]))



//Assignment 6
//1. You are given the heads of two sorted linked lists list1 and list2. Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists. Return the head of the merged linked list.
class Node{
    var value: Int
    var next: Node?
    init(value: Int){
        self.value = value
        self.next = nil
    }
}
func mergeTwo(_ l1: Node , _ l2: Node)->[Int]{
    var holder: [Int]=[]
    if l1.value<l2.value{
         l1.next = l2
        holder.append(l1.value)
        holder.append(l2.value)
    }else{
        l2.next = l1
        holder.append(l2.value)
        holder.append(l1.value)
    }
   
    return holder
}


var l1: Node = Node(value: 1)
l1.next = Node(value: 2)
l1.next?.next = Node(value:4)
var l2: Node = Node(value: 2)
l2.next = Node(value: 3)
l2.next?.next = Node(value: 4)
print(mergeTwo(l1,l2))
//
//2. You are given an array of k linked-lists lists, each linked-list is sorted in ascending order. Merge all the linked-lists into one sorted linked-list and return it.
func mergeLists(_ arg: [Node])->[Int]{
    var holder: [[Int]] = []
    for i in 0..<arg.count-1 {
//        var mergedList: Node? = arg[0]
//        if i+1 < =a
   var mergedTwo = mergeTwo(arg[i] , arg[i+1] )
    
        holder.append(mergedTwo)
}
    return holder.flatMap { $0 }
 }
var l3: Node = Node(value: 3)
l3.next = Node(value: 4)
l3.next?.next = Node(value: 5)
print(mergeLists([l1,l2,l3]))



//Assignment7
//1. Write a detailed good use case code on Error Handling
enum error: Error{
    case wrongPassword
    case wrongEmail
}
func logIn(email : String , password: String)throws->String{
    if email != "asmaa@gmail.com"{
        throw error.wrongEmail
    }else if password != "12345678"{
        throw error.wrongPassword
    }
    return "welcom back \(email)"
}
do{
    let result = try logIn(email: "asmaa", password: "12345678")
    print(result)
}catch error.wrongEmail{
    print("Wrong email! , try again leter")
}catch error.wrongPassword{
    print("Wrong Password")
}





//2. Write a detailed use case code on Protocol
protocol Colors {
    func rgbValue() -> String
}

class Red: Colors {
    var colorName: String

    init(colorName: String) {
        self.colorName = colorName
    }

    var hexValue: String {
        return "#ff0000" // Hex value for pure red
    }

    func rgbValue() -> String {
        return "the rgb value is (255, 0, 0)" // RGB value for pure red
    }
}





//3. Write extensions of strings and Double (at 5 of each one ) with their implementation
extension String{
    
    func split()->[String]{
        var word=""
        var holder: [String] = []
        for i in self{
            if i == " " {
                if !word.isEmpty {
                  holder.append(word)
                  word = ""
                   }
            }else{
//                print(i)
              word += String(i)
            }
            
            
        }
         return holder
    }
   
}

var sent = "hello there im here now ?"
print(sent.split())


extension String {
    func index(_ idx:Int)->Any{
        var value: Character?
        for (i,char) in self.enumerated(){
            if idx == i {
                value = char
            }
//            print(i , char)
        }
        return value ?? nil
    }
}
var str = "asmaa"
print(str.index(3))


extension String{
    func removeVowels()->String{
        let vowels:[Character] = ["i","u","o","e","a"]
        var newStr = ""
    for i in self {
        if !vowels.contains(i){
            newStr.append(i)
        }
    }
         return newStr
    }
}
let myStr = "vowel check "
print (myStr.removeVowels())


extension String{
    func capitalize()-> String{
        
        var word: String = ""
       if let firstEle = self.first?.uppercased(){
         word+=firstEle
       }
        for (i,char) in  self.enumerated(){
            if i != 0 {
                word+=String(char)
            }
        }
        return word
    }
    
}

print(str.capitalize())

extension String{
    func length()->Int{
        return self.count
    }
}

print(str.length())

///////////////////////Int

extension Int{
    func power(_ num: Int)-> Int{
        var result = self
        var i = num
        while i > 1{
            result *= self
            i-=1
        }
        return result
    }
}

var num = 3
print(num.power(2))


extension Int {
    func isPrime()->Bool{
        if self < 2 {
            return false
        }
        for i in 2..<self{
            if self % i == 0 {
                return false
            }
        }
        return true
    }
}
print(num.isPrime())

extension Int{
    func addStringNumbers(_ strNum: String)->Int{
        var num: Int = Int(strNum) ?? 0
        return self + num
    }
}

var strNum = "1"
print(num.addStringNumbers(strNum))

extension Int{
    func isEven()->Bool{
        if self % 2 == 0 {
            return true
        }
        return false
    }
}


extension Int{
    func isOdd()-> Bool{
        if self % 2 != 0 {
                  return true
              }
              return false
    }
}

print(num.isOdd())
print(num.isEven())
