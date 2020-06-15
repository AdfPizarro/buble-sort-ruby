# frozen_string_literal: true

def bubble_sort(arr)
  changes = true
  while changes
    changes = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        changes = true
      end
    end
  end
  p arr
end

def bubble_sort_by(arr)
  changes = true
  while changes
    changes = false
    (arr.length - 1).times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        changes = true
      end
    end
  end
  p arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
