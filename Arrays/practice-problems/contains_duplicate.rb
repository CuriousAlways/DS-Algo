# https://leetcode.com/problems/contains-duplicate/description/
# @param {Integer[]} nums
# @return {Boolean}
require 'set'

def contains_duplicate(nums)
  set = Set.new

  nums.each do |item|
    return true if set.include?(item)

    set.add(item)
  end

  false
end
