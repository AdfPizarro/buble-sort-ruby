def bubble_sort (arr)
  changes=true
  while changes do
    changes=false
    (arr.length-1).times do |i|
      if arr[i]>arr[i+1]
        arr[i],arr[i+1]=arr[i+1],arr[i]
        changes=true
      end
    end
  end
  p arr
end
