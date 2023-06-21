def merge_sort(array)
  #exit code
  return array if array.length < 2

  #split the array into halves
  split = array.length/2
  left_array = array[0..split-1]
  right_array = array[split..array.length-1]
  #sort left half of array
  sorted_left_array = merge_sort(left_array)
  #sort right half of array
  sorted_right_array = merge_sort(right_array)
  

  #merge the two arrays
  sorted = []
  while(sorted_left_array.length > 0 || sorted_right_array.length > 0)
    if sorted_right_array.length == 0
      sorted.push(sorted_left_array[0])
      sorted_left_array.shift
    elsif sorted_left_array.length == 0
      sorted.push(sorted_right_array[0])
      sorted_right_array.shift
    elsif sorted_left_array[0] < sorted_right_array[0]
      sorted.push(sorted_left_array[0])
      sorted_left_array.shift
    elsif sorted_left_array[0] >= sorted_right_array[0]
      sorted.push(sorted_right_array[0])
      sorted_right_array.shift
    end
  end
  sorted
end

p merge_sort([69, 94, 29, 50, 66, 26, 41, 24, 79, 88, 6, 81, 64, 96, 35, 65, 15, 34, 60, 5, 28, 3, 48, 68, 92])
p merge_sort([45, 60, 85, 20, 79, 22, 1, 10, 100, 69, 80, 26, 17, 99, 67, 40, 78, 2, 65, 59, 98, 72, 92, 47, 68])
p merge_sort([16, 91, 30, 75, 76, 12, 64, 1, 60, 54, 5, 55, 39, 44, 45, 99, 2, 13, 72, 87, 23, 51, 73, 56, 3])
p merge_sort([40, 86, 36, 71, 31, 62, 96, 98, 66, 58, 45, 69, 19, 17, 39, 85, 2, 100, 34, 21, 27, 61, 75, 7, 43])
p merge_sort([21, 43, 90, 87, 49, 20, 83, 67, 44, 46, 68, 59, 64, 25, 82, 48, 85, 89, 98, 61, 54, 60, 24, 35, 92])