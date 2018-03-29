def first_anagram?(str1, str2)
  anagram_hash = Hash.new {|h, k| h[k] = []}
  p possible_anngram = str1.chars.permutation.to_a
  possible_anngram.each do |anagram|
    p anagram.join
    anagram_hash[str1] << anagram.join
  end
  p anagram_hash.values.flatten.include?(str2)
end

def second_anagram?(str1, str2)
  str1_arr = str1.chars
  str2_arr = str2.chars
   str1_arr.each do |ch1|
    str2_arr.each do |ch2|
      if ch1 == ch2
        str1_arr.delete(ch)
        str2_arr.delete(ch)
      end
    end
    return true if str1_arr.empty? and str2_arr.empty?
  end
  false
end

def third_anagram?(str1, str2)
  jumble_sort(str1) == jumble_sort(str2)

end
def jumble_sort(str)
  alphabeth = ('a'..'z').to_a
  arr = str.chars
  sorted = false
  until sorted
    sorted = true
    arr.each_with_index do |ch, i|
      next if i + 1 == arr.length
      j = i + 1
      if alphabeth.index(arr[i]) > alphabeth.index(arr[i])
        arr[i], arr[j] = arr[j],arr[i]
        sorted = false
      end
    end
  end
  arr.join
end

def forth_anagram?(str1, str2)
  str1_hash = Hash.new(0)
  str2_hash = Hash.new(0)
  str1.chars.each do |ch|
    str1_hash[ch] += 1
  end
  str2.chars.each do |ch|
    str2_hash[ch] += 1
  end
  str1_hash == str2_hash

end
