# frozen_string_literal: true

def bubble_sort(arr = [])
  (0...arr.length).each do |i|
    (i...arr.length).each do |j|
      arr[i], arr[j] = arr[j], arr[i] if arr[i] > arr[j]
    end
  end
  arr
end

p bubble_sort [1, 3, 2, 0, 5]
