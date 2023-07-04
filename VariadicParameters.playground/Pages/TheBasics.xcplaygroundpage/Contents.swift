/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Variadic Parameters
 - Callout(Variadic Parameters): Variadic parameters in Swift allow you to accept an indefinite number of arguments of the same type within a function.
*/
// Link: https://www.youtube.com/watch?v=P9KrmrbWUKo&ab_channel=StewartLynch

import Foundation

code(for: "Without Variadic Parameters") {
    // Create a function that accepts an array of ints and returns the sum
    func addNumbers(_ numbers: [Int]) -> Int {
        numbers.reduce(0, +)
    }
    // Print the sum of an array of numbers
    print(addNumbers([1,2,3,4,5,6]))
//    print(addNumbers())
}
code(for: "With Variadic Parmeters") {
    // Change the parameter to a variadic parameter
    func addNumbers(_ numbers: Int...) -> Int {
        numbers.reduce(0, +)
    }
    print(addNumbers(1,2,3,4,5,6))
    print(addNumbers())
}

code(for: "String Concatenation") {
    // create a variadic function that will combine strings and separate them with a given separator
    func concatenateStrings(_ items: String..., separator: String = " ") -> String {
        items.joined(separator: separator)
    }
    let combined = concatenateStrings("One", "Two", "Three", separator: ",")
    print(combined)
    print("One", "Two", "Three", separator: ",")
    print()
}
/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
*/
