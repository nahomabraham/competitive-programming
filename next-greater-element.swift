class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var newNums: [Int] = []

        for i in 0..<nums1.count{
            var targetFoundAt: Int?

            for j in 0..<nums2.count{
                if nums1[i] == nums2[j]{
                    targetFoundAt = j   // = 3
                }
                
                if targetFoundAt != nil{
                    if j < nums2.count-1 && nums2[j + 1] > nums2[targetFoundAt!]{
                        newNums.append(nums2[j + 1])
                        break
                    }
                    if j == nums2.count - 1{
                        newNums.append(-1)
                    }
                }
            }
        }
    return newNums
    }
}
