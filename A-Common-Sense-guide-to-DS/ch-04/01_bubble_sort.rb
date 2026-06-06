# Takes an unsorted array and returns new sorted array in ascending order
def bubble_sort(arr)
  arr = arr.dup
  unsorted_size = arr.size

  while unsorted_size > 1
    first, second = 0, 1
    sorted = true

    while second < unsorted_size
      first_val, second_val = arr[first], arr[second]
      if first_val > second_val
        sorted = false
        arr[first], arr[second] = second_val, first_val
      end
      first += 1
      second += 1
    end

    break if sorted
    unsorted_size -= 1
  end

  arr
end
