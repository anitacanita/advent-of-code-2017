def valid?(string)
  string.split.uniq.length == string.split.length
end

def count_valid_passphrases(input)
  arr = input.map do |passphrase|
    valid?(passphrase)
  end

  arr.count(true)
end

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

p count_valid_passphrases(input)
