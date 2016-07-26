#!/usr/bin/ruby

def merge_sort(arr)
  return arr if arr.length == 1
  middle = arr.length / 2	
  concat(merge_sort(arr[0...middle]), merge_sort(arr[middle..-1]))
end 

def concat(left, right)
  result = []
  until left.length == 0 || right.length == 0 do
    result << (left.first <= right.first ? left.shift : right.shift)
  end
  result + left + right
end	

puts merge_sort([11,9,8,6,7,12])