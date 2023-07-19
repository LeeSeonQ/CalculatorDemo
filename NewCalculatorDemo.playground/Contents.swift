import UIKit

class Calculator {
    func calculate(operation: String, firstNum: Double, secondNum: Double) -> Double? {
        if operation == "+" {
            return ( firstNum + secondNum )
        } else if operation == "-" {
            return ( firstNum - secondNum )
        } else if operation == "*" {
            return ( firstNum * secondNum )
        } else if operation == "/" {
            if secondNum == 0 {
                return nil
            }
            return ( firstNum / secondNum )
//        } else if operation == "%" {
//            return (firstNum % secondNum)
        } else {
            return nil
        }
        }
        
    }





let calculator = Calculator()

let result1 = calculator.calculate(operation: "+", firstNum: 5, secondNum: 3)
let result2 = calculator.calculate(operation: "-", firstNum: 5, secondNum: 3)
let result3 = calculator.calculate(operation: "*", firstNum: 5, secondNum: 3)
let result4 = calculator.calculate(operation: "/", firstNum: 6, secondNum: 3)
//let result5 = calculator.calculate(operation: "%", firstNum: 5, secondNum: 3)
