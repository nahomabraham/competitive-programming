class Solution:
    def isValid(self, s: str) -> bool:
        dict = {')': '(', '}': '{', ']': '['}
        s = [*s]
        stack = []
        isValid = False

        for i in range(len(s)):
            if s[i] in dict.values():
                stack.append(s[i])
            else:
                if len(stack) == 0:
                    return False
                    
                if stack[-1] == dict[s[i]]:
                    stack.pop()
                else:
                    return False
        if len(stack) == 0:
            isValid = True
    
        return isValid

