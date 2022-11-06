class Solution {
    func sortColors(_ nums: inout [Int]) {
        for i in 0..<nums.count{
            for j in i+1..<nums.count{
                if nums[i] > nums[j]{
                    var temp = nums[i]
                    nums[i] = nums[j]
                    nums[j] = temp
                }
            }
        }
    }
}
