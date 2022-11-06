class Solution {
    func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
        var nums = nums
        var targetLocations: [Int] = []

        for i in 0..<nums.count{
            for j in i+1..<nums.count{
                if nums[i] > nums[j]{
                    var temp = nums[i]
                    nums[i] = nums[j]
                    nums[j] = temp
                }
            }
        }

        for i in 0..<nums.count{
            if target == nums[i]{
                targetLocations.append(i)
            }
        }
        return targetLocations
    }
}
