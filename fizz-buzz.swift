class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var answer: [String] = []
        for i in 1...n{
            if i%3 == 0{
                if i%5 == 0{
                    answer.append("FizzBuzz")
                }
                else{
                    answer.append("Fizz")
                }
            }
            else if i%5 == 0{
                answer.append("Buzz")
            }
            else {
                answer.append(String(i))
            }
        }
        return answer
    }
}
