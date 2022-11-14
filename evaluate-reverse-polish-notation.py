class Solution:
    def evalRPN(self, tokens: List[str]) -> int:
        result = []
        for char in tokens:
            if char not in ["+", "-", "*", "/"]:
                result.append(int(char))
            else:
                y = result.pop()
                x = result.pop()

                match char:
                    case "+":
                        result.append(x+y)
                    case "-":
                        result.append(x-y)
                    case "*":
                        result.append(x*y)
                    case "/":
                        result.append(x//y) if x/y > 0 else result.append(ceil(x/y))
                        
        return result[0]
