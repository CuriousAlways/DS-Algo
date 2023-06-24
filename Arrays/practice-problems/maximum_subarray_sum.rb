# https://leetcode.com/problems/maximum-subarray/description/
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  # Kadane's algorithm solution
  # time complexity  -> O(n)
  # Space complexity -> O(1)
  max_sum, current_sum = nums[0], nums[0] 

  (1...nums.size).each do |index|
    current_sum = [nums[i], current_sum + nums[i]].max
    max_sum = [current_sum, max_sum].max
  end
  
  max_sum
end