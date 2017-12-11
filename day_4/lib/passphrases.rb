def get_input(file)
  input_file = File.readlines(file)

  input_file.map do |line|
    line.split { |row| row.split(/\t/) }
  end
end

def prepare_input(input_file)
  get_input(input_file).map { |a| a.join(" ")}
end

input = prepare_input("input.txt")


## part 1 ##

def valid?(string)
  string.split.uniq.length == string.split.length
end

def count_valid_passphrases(input)
  arr = input.map do |passphrase|
    valid?(passphrase)
  end

  arr.count(true)
end


p "part 1: #{count_valid_passphrases(input)}"


## part 2 ##

def second_count_valid_passphrases(input)
  arr = input.map do |passphrase|
    any_anagrams?(passphrase)
  end

  arr.count(true)
end

def any_anagrams?(string)
  sort_strings(string).uniq.length == sort_strings(string).length
end

def sort_strings(string)
  string.split.map { |chunk| chunk.split(//).sort.join}
end

p "part 2: #{second_count_valid_passphrases(input)}"
