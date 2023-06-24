# https://leetcode.com/problems/rotate-array/description/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  k %= nums.size

  return nums if k.zero?

  j = nums.size - k

  # solution by array rotation
  # article: https://www.codingninjas.com/codestudio/library/reversal-algorithm-for-array-rotation
  # nums = [1,2,3,4,5,6,7] k = 3
  # [4, 3, 2, 1, 5, 6, 7] -> reverse [0, size - k - 1]
  # [4, 3, 2, 1, 7, 6, 5] -> reverse [size-k, size - 1]
  # [5, 6, 7, 1, 2, 3, 4] -> reverse [0, size - 1]


  rotate_bw(nums, 0, j-1)
  rotate_bw(nums, j, nums.size - 1)
  rotate_bw(nums, 0, nums.size - 1)
end


def rotate_bw(nums, start_index, end_index)
  while(start_index < end_index)
    nums[start_index], nums[end_index] = nums[end_index], nums[start_index]
    start_index += 1
    end_index -= 1
  end
end
