def merge_sorted_array(arr1, arr2)
  return unless arr1.is_a?(Array) && arr2.is_a?(Array)

  return arr1.dup if arr2.empty?
  return arr2.dup if arr1.empty?

  i,j = 0,0
  result = []

  while i < arr1.size && j < arr2.size
    if arr1[i] < arr2[j]
      result << arr1[i]
      i += 1
    else
      result << arr2[j]
      j += 1
    end
  end

  result.push(*arr1[i..-1]) if i < arr1.size
  result.push(*arr2[j..-1]) if j < arr2.size

  result
end
