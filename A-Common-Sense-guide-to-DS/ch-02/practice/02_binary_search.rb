# Binary search within ordered array (ascending order)
# return :
#   - found: index of element in array
#   - not found: nil
def binary_search(arr, element)
  start_index = 0
  end_index = arr.size - 1

  while start_index <= end_index
    mid = (start_index + end_index)/ 2
    val = arr[mid]
    return mid if val == element

    if val > element
      end_index = mid - 1
    else
      start_index = mid + 1
    end
  end
end
