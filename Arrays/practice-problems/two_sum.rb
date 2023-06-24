# https://leetcode.com/problems/two-sum/description/
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
require 'set'

def two_sum(nums, target)
  viewed = {}

  for i in 0...nums.size
    required = target - nums[i];
    if viewed.key?(required)
      return [viewed[required], i];
    end

    viewed[nums[i]] = i
  end
end
