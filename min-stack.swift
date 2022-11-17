class MinStack {
    var topIndex: Int
    var stack: [Int]

    init() {
        topIndex = -1
        stack = []
    }
    
    func push(_ val: Int) {
        topIndex += 1
        stack.append(val)
    }
    
    func pop() {
        stack.remove(at: topIndex)
        topIndex -= 1
    }
    
    func top() -> Int {
        return stack[topIndex]
    }
    
    func getMin() -> Int {
        return stack.min()!
    }
}
