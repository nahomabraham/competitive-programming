import Foundation

class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        if n <= 0{
            return false
        }
        var exponent = log10(Double(n))/log10(3.0)

        return Double(Int(exponent)) == exponent 

    }
}
