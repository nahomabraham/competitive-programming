class Solution:
    def reverseParentheses(self, s: str) -> str:
        stack = []
        tempStack = []

        for i in range(len(s)):
            if s[i] != ')':
                stack.append(s[i])
            else:
                while stack[-1] != '(':
                    tempStack.append(stack.pop())
                stack.pop()
                tempStack.reverse()
                while len(tempStack) != 0:
                    stack.append(tempStack.pop())
                
            
        return "".join(stack)

