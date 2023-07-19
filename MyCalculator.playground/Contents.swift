import UIKit
// 사칙연산 클래스 만들고 연산 진행 출력.
class Calculator {
    func calculate (operation: String, n1: Double, n2: Double) -> Double? {
        if operation == "+" {
            return n1 + n2
        } else if operation == "-" {
            return n1 - n2
        } else if operation == "*" {
            return n1 * n2
        } else if operation == "/" {
            if n2 == 0 {
                return nil
            }
            return n1 / n2
        } else {
            return nil
        }
        
    }
}

let calculator = Calculator()
let result1 = calculator.calculate (operation: "+", n1: 10, n2: 5)
