//RLepin
//Swift Challenge
//: Playground - noun: a place where people can play

import UIKit

func swapValues(var value1:Any, var value2:Any) //First Challenge
{
    (value1, value2) = (value2, value1)
}

func flexStrings (string1 : String = "", string2 : String = "") -> String //Second Challenge
    
{
    var result = "none"
    
    if (string1+string2) != ""
    {
        result = (string1+string2)
    }
    return result
}

func sumAny(numbers:AnyObject...) -> String //Third Challenge
{
    var totalInt = 0
    for number in numbers
    {
        switch number
        {
        case 0 as Int, "" as String:
            totalInt += -10
        case let s as String where Int(s) > 0:
            totalInt += Int(s)!
        case is Int:
            totalInt += number.integerValue
        default:
            break
        }
    }
    return String(totalInt)
}

func countFrom(from:Int, to:Int) // Fourth Challenge
{
    print(from)
    if from < to
    {
        countFrom(from+1, to: to)
    }
}

swapValues("First", value2: "Second")
flexStrings()
flexStrings("One", string2: "Two")
flexStrings(string2: "Two")
sumAny("5","","hireMe",20,"-100")
countFrom(1, to: 10)


