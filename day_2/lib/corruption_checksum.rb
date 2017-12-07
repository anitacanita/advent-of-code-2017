## work the input file ##

def get_input(file)
  input_file = File.readlines(file)

  input_file.map do |line|
    line.split { |row| row.split(/\t/) }
  end
end

def prepare_input(input_file)
  get_input(input_file).map { |a| a.map { |n| n.to_i } }
end

input = prepare_input("input.txt")

## part 1 ##

def difference(row)
  row.max - row.min
end

def get_all_differences(rows)
  rows.map { |row| difference(row)}
end

def corruption_checksum(rows)
  get_all_differences(rows).reduce(:+)
end

# p "part 1: #{corruption_checksum(input)}"

## part 2

def whole?(number)
  number % 1 == 0
end

def get_evenly_divisible(row)
  result = []

  row.map do |n|
    row.map do |n1|
      if whole?(n/n1.to_f) && (n/n1.to_f) != 1.0
        result << n
        result << n1
      end
    end
  end

  result
end

def get_divisions(rows)
  rows.map {|row| get_evenly_divisible(row).reduce(:/)}
end

def second_corruption_checksum(rows)
  get_divisions(rows).reduce(:+)
end

p "part 2: #{second_corruption_checksum(input)}"
