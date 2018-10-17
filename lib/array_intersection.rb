
# Creates a new array to return the intersection of the two input arrays
# First solution, better space complexity over time complexity
# def intersection(array1, array2)
#   return [] if array1 == nil || array2 == nil
#   return [] if array1.length == 0 || array2.length == 0
#
#   i = 0
#   expected_intersection = []
#
#   while i < array1.length
#     k = 0
#
#     while k < array2.length
#
#       if array1[i] == array2[k]
#         expected_intersection << array1[i]
#       end
#       k += 1
#
#     end
#     i += 1
#   end
#   return expected_intersection
# end

#Second solution, better time complexity over space complexity
def intersection(array1, array2)
  return [] if array1 == nil || array2 == nil
  return [] if array1.length == 0 || array2.length == 0

  arr1_length = array1.length
  arr2_length = array2.length


  i = 0
  k = 0
  arr_hash = {}
  expected_intersection = []

  if arr1_length <= arr2_length
    while i < arr1_length
      arr1_key = array1[i]
      arr_hash[arr1_key] = true
      i += 1
    end

    while k < arr2_length
      arr2_key = array2[k]
      if arr_hash[arr2_key]
        expected_intersection << arr2_key
      end
      k += 1
    end

  else
    while i < arr2_length
      arr2_key = array2[i]
      arr_hash[arr2_key] = true
      i += 1
    end

    while k < arr1_length
      arr1_key = array1[k]
      if arr_hash[arr1_key]
        expected_intersection << arr1_key
      end
      k += 1
    end
  end

return expected_intersection
end
