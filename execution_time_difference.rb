#PHASE 1 MY_MIN
require 'byebug'
def my_min(arr) #Time Complexity: O((n^2 +2) +1)
  # debugger
  arr.each_with_index do |num1, i|
    arr.each_with_index do |num2, j|
      if num1 > num2
        arr[i], arr[j] = arr[j], arr[i]
      end
    end
  end
  arr.last
end

#PHASE 2 MY_MIN
def my_min2(arr) #Time Complexity: O(2 + (n +1)
  min_num = arr.first
  arr.each do |num|
    min_num = num if num < min_num
  end
  min_num
end

#commbination meses with c=the Complexity
# def largest_continuous_subsum(arr)
#   sub_sets = []
#   arr.size.times do |num|
#     num += 1
#     sub_sets += arr.combination(num).to_a i
#   end
#   sub_sets
#   large_sum = sub_sets[0].reduce(:+)
#   sub_sets.each do |set|
#     sum = set.reduce(:+)
#     large_sum = sum if large_sum < sum
#   end
#   large_sum
# end


#PHASE 1 LARGET+CONTINUOUS_SUBSUM
def largest_continuous_subsum(arr)
  sub_sets = []
  arr.each_with_index do |el1, i|
    arr.each_with_index do |el2, j|
      sub_sets << arr[i..j] if j >= i
    end
  end
  large_sum = sub_sets[0].reduce(:+)
  sub_sets.each do |set|
    sum = set.reduce(:+)
    large_sum = sum if large_sum < sum
  end

  p sub_sets
  large_sum
end


#PHASE 2 LARGET+CONTINUOUS_SUBSUM

def largest_continuous_subsum2(arr)
  # subset = arr.reduce(:+)
  large_sum = arr.first
  cur  = arr.first
  (1..arr.size - 1).each do |i|
  cur  = 0 if cur < 0
  cur += arr[i]
  large_sum = cur if cur > large_sum
end
large_sum


end
