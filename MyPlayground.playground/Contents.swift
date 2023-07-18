import UIKit





class Calculator {
    func calculate(operator: String, firstNumber: Double, secondNumber: Double) -> Double {
        switch `operator` {
        case "+":
            return AddOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            return SubtractOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            return MultiplyOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            return DivideOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
//        case "%":
//            return RemainderOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            return 0
        }
    }
}
let calculator = Calculator()

    class AddOperation {
        func operate(firstNumber: Double, secondNumber: Double) -> Double {
            return firstNumber + secondNumber
        }
    }
let addResult = calculator.calculate(operator: "+", firstNumber: 5, secondNumber: 3)
print("addResult : \(addResult)")

    class SubtractOperation {
        func operate(firstNumber: Double, secondNumber: Double) -> Double {
            return firstNumber - secondNumber
            
        }
    }
let subtractResult = calculator.calculate(operator: "-", firstNumber: 5, secondNumber: 3)
print("subtractResult : \(subtractResult)")

    class MultiplyOperation {
        func operate(firstNumber: Double, secondNumber: Double) -> Double {
            return firstNumber * secondNumber
            
        }
    }
let multiplyResult = calculator.calculate(operator: "*", firstNumber: 5, secondNumber: 3)
print("multiplyResult : \(multiplyResult)")
    class DivideOperation {
        func operate(firstNumber: Double, secondNumber: Double) -> Double {
            return firstNumber / secondNumber
            
        }
    }
let divideResult = calculator.calculate(operator: "/", firstNumber: 9, secondNumber: 3)
print("divideResult : \(divideResult)")



// 리마인드 연산자
//class RemainderOperation {
//    func operate(firstNumber: Double, secondNumber: Double) -> Double {
//        return (firstNumber%secondNumber)
//    }
//}
//let remainderResult = calculator.calculate(operator: "%", firstNumber: 5, secondNumber: 3)
//print("remainderResult : \(remainderResult)")


//
//class Calculator {
//    func calculate(firstNumber: Int, secondNumber: Int) -> Double {
//        let calculator = Calculator()
//        let addResult = firstNumber + secondNumber// 덧셈 연산
//        let subtractResult = firstNumber + secondNumber// 뺄셈 연산
//        let multiplyResult = firstNumber + secondNumber// 곱셈 연산
//        let divideResult = firstNumber + secondNumber// 나눗셈 연산
//
//        print("addResult : \(addResult)")
//        print("subtractResult : \(subtractResult)")
//        print("multiplyResult : \(multiplyResult)")
//        print("divideResult : \(divideResult)")
//        // 정확한 operator가 전달되지 않을 시 0을 리턴(nil을 리턴해도 됨)
//        return 0
//    }
//
//}
//
//
