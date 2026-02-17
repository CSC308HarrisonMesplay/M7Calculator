import UIKit

//Non-optional and optional
let number = 123
print(number)
//let numberOptional: Int? = 123
//let numberOptional: Int? = nil //will cause crash

//forced unwrapping: only use when 100% sure the value is not nil
//print(numberOptional!)

let numberOptional: Int? = 123
let a = numberOptional
print(type(of: a))
let b = numberOptional!

let str = "123"
let num2 = Int(str)! //Type conversion -> optional type

let strOptional: String? = nil
//let num 3 = Int(strOptional!) //Int()

//Unwrapping Optional
//1. Forced Unwrapping
//2. Optional binding -safely

/*
 if let name: Type = optionalExpression{
    statement
 }
 while let name: Type = optionalExpression{
    statement
}
 guard let name: Type = optionalExpression else{
    statement
    return
}
 statement
 */

let str2: String? = "123"
let num3 = Int(str2!)! //Forced unwrapping

//optional binding
if let str2: String = str2{
    if let num3 = Int(str2){
        print(num3)
    }else{
        print("Type Conversion Failed")
    }
}
