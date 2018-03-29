#brute force
def bad_two_sum?(arr, target_sum)
  arr.each do |num|
    arr.each do |num2|
      return true if (num + num2) == target_sum && num != num2
    end
  end
  false
end


#not completed
def okay_two_sum(arr, target_sum)
  # p arr.sort
  mid = arr.size / 2
  p diff = target_sum - arr[mid]
  p result = arr.sort.bsearch {|num|  num == diff}
  return false if result == nil

  return true if result.is_a?(Integer)
end
