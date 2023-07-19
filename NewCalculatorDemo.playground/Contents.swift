import UIKit

class Calculator {
    
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    
    func calculate(operation: String, firstNum: Double, secondNum: Double) -> Double? {
        if operation == "+" {
            return (addOperation.operate(firstNum: firstNum, secondNum: secondNum))
        } else if operation == "-" {
            return (subtractOperation.operate(firstNum: firstNum, secondNum: secondNum))
        } else if operation == "*" {
            return (multiplyOperation.operate(firstNum: firstNum, secondNum: secondNum))
        } else if operation == "/" {
            if secondNum == 0 {
                return nil
            }
            return (divideOperation.operate(firstNum: firstNum, secondNum: secondNum))
        } else if operation == "%" {
            return (firstNum.truncatingRemainder(dividingBy: secondNum))
        } else {
            return nil
        }
        }
        
    }

class AddOperation {
    func operate(firstNum: Double, secondNum: Double) -> Double{
        return firstNum + secondNum
    }
}
class SubtractOperation{
    func operate(firstNum: Double, secondNum: Double) -> Double{
        return firstNum - secondNum
    }
}
class MultiplyOperation{
    func operate(firstNum: Double, secondNum: Double) -> Double{
        return firstNum * secondNum
    }
}
class DivideOperation{
    func operate(firstNum: Double, secondNum: Double) -> Double{
        return firstNum / secondNum
    }
}
let calculator = Calculator()

let result1 = calculator.calculate(operation: "+", firstNum: 5, secondNum: 3)
let result2 = calculator.calculate(operation: "-", firstNum: 5, secondNum: 3)
let result3 = calculator.calculate(operation: "*", firstNum: 5, secondNum: 3)
let result4 = calculator.calculate(operation: "/", firstNum: 6, secondNum: 3)
let result5 = calculator.calculate(operation: "%", firstNum: 5, secondNum: 3)
