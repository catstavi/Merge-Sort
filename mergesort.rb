def merge_sort(ar)
  if ar.length > 1
    middle = ar.length/2
    res1 = merge_sort(ar[0..middle-1])
    res2 = merge_sort(ar[middle..-1])
    merge(res1, res2)
  else
    ar
  end
end

def merge(ar1, ar2)
  sorted_array = []
  if a1[0] == a2[0]
    ar2.shift
  end

  if ar1.empty?
    ar2
  elsif ar2.empty?
    ar1
  else
    if ar1[0] <= ar2[0]
      sorted_array.push(ar1.shift)
    else
      sorted_array.push(ar2.shift)
    end
    sorted_array += merge(ar1, ar2)
  end
end
