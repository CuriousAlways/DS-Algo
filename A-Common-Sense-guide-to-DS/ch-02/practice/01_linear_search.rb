# Linear search within ordered array (ascending order)
# return :
#   - found: index of element in array
#   - not found: nil
def linear_search(arr, element)
  no_of_element_searched = 0
  arr.each_with_index do |el, index|
    no_of_element_searched += 1
    if el == element
      puts "No. of element searched: #{no_of_element_searched}, total no. of element in array: #{arr.size}"
      return index
    elsif el > element
      break
    end
  end


  puts "No. of element searched: #{no_of_element_searched}, total no. of element in array: #{arr.size}"
  return nil
end
