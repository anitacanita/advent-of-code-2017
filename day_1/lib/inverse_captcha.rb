def captcha(input)
  digits_array = input.digits

  result = []

  if digits_array.first == digits_array.last
     result << digits_array.last
  end

  digits_array.map.with_index do |digit, i|
    next_digit = digits_array[i+1]
    digit == next_digit ? result << digit : result << 0
  end

  result.inject(:+)
end

p captcha(File.read("input.txt").to_i)
