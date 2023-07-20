import UIKit

// Lv 3 ~
class AddOperation {
    func operate (n1: Double, n2:Double) -> Double {
        return n1 + n2
    }
}
class SubtractOperation {
    func operate (n1: Double, n2:Double) -> Double {
        return n1 - n2
    }
}
class MultiplyOperation {
    func operate (n1: Double, n2:Double) -> Double {
        return n1 * n2
    }
}
class DivdeOperation {
    func operate (n1: Double, n2:Double) -> Double {
        return n1 / n2
    }
}
// ~ Lv 3

class Calculator {
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivdeOperation()
    
    func calculate (operation: String, n1: Double, n2: Double) -> Double? {
        if operation == "+" {
            return (addOperation.operate(n1: n1, n2: n2))
        } else if operation == "-" {
            return (subtractOperation.operate(n1: n1, n2: n2))
        } else if operation == "*" {
            return (multiplyOperation.operate(n1: n1, n2: n2))
        } else if operation == "/" {
            if n2 == 0 {
                return nil
            }
            return (divideOperation.operate(n1: n1, n2: n2))
        } else if operation == "%"{// Lv 2 ~
          return (n1.truncatingRemainder(dividingBy: n2)) // ~ Lv 2
        } else {
            return nil
        }
        
    }
}





let calculator = Calculator()

let result1 = calculator.calculate (operation: "+", n1: 10, n2: 5)
let result2 = calculator.calculate (operation: "-", n1: 10, n2: 5)
let result3 = calculator.calculate (operation: "*", n1: 10, n2: 5)
let result4 = calculator.calculate (operation: "/", n1: 10, n2: 5)
let result5 = calculator.calculate (operation: "%", n1: 10, n2: 5)
