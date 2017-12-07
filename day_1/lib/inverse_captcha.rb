## part 1 ##

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

# p "part 1: #{captcha(File.read("input.txt").to_i)}"

## part 2 ##

def get_steps(number)
  number.digits.count/2
end

def second_captcha(input)
  steps = get_steps(input)
  digits_array = input.digits
  result = []

  digits_array.map.with_index do |digit, i|
    next_digit = digits_array[i + steps]
    digit == next_digit ? result << digit + next_digit : result << 0
  end

  result.inject(:+)
end


# p "part 2: #{captcha(File.read("input.txt").to_i)}"
