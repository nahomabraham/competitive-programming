class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var sortedNums = nums.sorted(by: <)
        var i = 0
        var j = sortedNums.count-1
        var noOfOperations = 0

        while i < j {
            if sortedNums[i] + sortedNums[j] == k{
                noOfOperations += 1
                i += 1
                j -= 1
            }
            else if sortedNums[i] + sortedNums[j] < k{
                i += 1
            }
            else if sortedNums[i] + sortedNums[j] > k{
                j -= 1
            }
        }

        return noOfOperations
    }
}
