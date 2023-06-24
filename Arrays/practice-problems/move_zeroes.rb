# https://leetcode.com/problems/move-zeroes/
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  next_non_zero_index = 0
  
  (0...nums.size).each do |i|
    unless nums[i].zero?
      nums[next_non_zero_index] = nums[i]
      next_non_zero_index += 1
    end
  end

  nums[next_non_zero_index..-1] = [0]*(nums.size - next_non_zero_index) if next_non_zero_index < nums.size

end