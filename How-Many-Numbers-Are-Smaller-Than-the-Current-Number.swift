class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var newNums: [Int] = []
        for _ in nums{
            newNums.append(0)
        }

        for i in 0..<nums.count {
            
            for j in 0..<nums.count{
                if i == j{
                    continue
                }
                if nums[i] > nums[j]{
                    newNums[i] += 1
                }

            }
        }

        return newNums
    }
}
