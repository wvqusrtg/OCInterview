//
//  main.swift
//  ConsoleLearn
//
//  Created by ai-nixs on 2020/5/12.
//  Copyright © 2020 nixs. All rights reserved.
//

import Foundation

print("---begin---")
func greet(person:String)->String{
    let greeting = "Hello,"+person+" Today is a Nice Day!"
    return greeting
}
//print("调用函数返回字符串："+greet(person: "nixs"))
//print("调用函数返回字符串：\(greet(person: "nixs"))")
func sayHelloWorld() -> String {
    return "Hello World!"
}
//print(sayHelloWorld())
func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
//print(greetAgain(person: "Anna"))
// 打印“Hello again, Anna!”
func greet(person:String,alreadyGreeted:Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    }else{
        return greet(person: person)
    }
}
//print(greet(person: "倪新生", alreadyGreeted: true))
//print(greet(person: "倪新生", alreadyGreeted: false))
func greet(person:String) {
    print("Nice Day! \(person)")
}
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        //print("--- "+String(value))
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
//let bounds = minMax(array: [-100, 8, -6, 2, 109, 3, 71])
//print("min is \(bounds.min) and max is \(bounds.max)")

//你可以使用可选绑定来检查 minMax(array:) 函数返回的是一个存在的元组值还是 nil：
if let bounds = minMax(array: [-100, 8, -6, 2, 109, 3, 71]){
    //print("min is \(bounds.min) and max is \(bounds.max)")
}
// 打印“min is -6 and max is 109”

func greeting(for person:String) -> String {
    "\(person),Nice to meet you!"
}

//print(greeting(for: "韩露"))
func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
}
//someFunction(firstParameterName: 1, secondParameterName: 2)
func someFunction(arguementLabel parameterName:String) -> String {
    "\(parameterName),指定参数标签、参数名称、返回类型"
}

func greet(person:String,from hometown:String) -> String {
    "\(person) from hometown \(hometown)"
}
//print(greet(person: "nixs", from: "倪庄"))

func someFunction(_ firstParameterName:Int,secondParameterName:Int) -> Int {
    firstParameterName + secondParameterName
}

func someFunction(parameterWithoutDefault:Int,parameterWithDefault:Int = 12) {
    print("parameterWithoutDefault \(parameterWithoutDefault),parameterWithDefault \(parameterWithDefault)")
}
someFunction(parameterWithoutDefault: 111,parameterWithDefault: 222)

func arithmeticMean(_ numbers:Double...) -> Double {
    var total:Double = 0
    for number in numbers {
        total+=number
    }
    return total/Double(numbers.count)
}
//print(arithmeticMean(3, 8.25, 18.75))

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
//print("now somwInt=\(someInt) and anotherInt=\(anotherInt)")
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
var mathFunction: (Int, Int) -> Int = addTwoInts
//print(mathFunction(4,8))
mathFunction = multiplyTwoInts
//print(mathFunction(9,9))

func printMathResult(_ mathFunction: (Int,Int)->Int,_ a:Int, _ b:Int) {
    print("Result: \(mathFunction(a, b))")
}
//printMathResult(addTwoInts(_:_:), 2, 5)
//printMathResult(multiplyTwoInts, 2, 5)

func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward:Bool) -> (Int)->Int {
    return backward ? stepForward(_:): stepBackward(_:)
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero 现在指向 stepBackward() 函数。
//print(moveNearerToZero(9))
//print(chooseStepFunction(backward: true)(99))

func chooseStepFunction2(backward:Bool) -> (Int)->Int {
    func stepForward2(_ input:Int)->Int{
        return input+1
    }
    func stepBackward2(_ input:Int)->Int{
        return input-1
    }
    return backward ? stepBackward(_:) : stepForward2(_:)
}

var currentValue2 = -4
let moveNearerToZero2 = chooseStepFunction2(backward: currentValue2>0)
while currentValue2 != 0{
    //print("\(currentValue2)... ")
    currentValue2 = moveNearerToZero2(currentValue2)
}
//print("zero!")
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
 
func backward(_ s1:String,_ s2:String) -> Bool {
    s1>s2
}
var reversedNames = names.sorted(by: backward(_:_:))

reversedNames = names.sorted(by: {
    (s1: String, s2: String) -> Bool in
    return s1.count > s2.count
})
reversedNames = names.sorted(by: {
    s1, s2 in
    return s1 > s2
})
reversedNames = names.sorted(by: {
    s1, s2 in
    s1 > s2
})
//$0 和 $1 表示闭包中第一个和第二个 String 类型的参数。
reversedNames = names.sorted(by: {
    $0.count > $1.count
})
reversedNames = names.sorted(by: >)
for item in reversedNames{
    print(item)
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

print("---end---")
