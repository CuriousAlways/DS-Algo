def reverse(str)
  return unless str.is_a?(String)

  arr = str.split('')
  
  for i in 0...(arr.size/2)
    i_comp = arr.size - i - 1

    arr[i], arr[i_comp] = arr[i_comp], arr[i]
  end

  arr.join
end

# reverse string directly without intermidiate array

# def reverse2(str)
#   return unless str.is_a?(String)

#   result = ''
#   for i in (str.size - 1).downto(0)
#     result << str[i]
#   end

#   result
# end


# In strings are mutable so we can directly change the string
# def reverse!(str)
#   return unless str.is_a?(String)

#   for i in 0...(str.size/2)
#     i_comp = str.size - 1 - i
#     str[i], str[i_comp] = str[i_comp], str[i]
#   end

#   str
# end