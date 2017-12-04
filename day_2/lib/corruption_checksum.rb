def corruption_checksum(rows)
  get_all_differences(rows).reduce(:+)
end

def difference(row)
  row.max - row.min
end

def get_all_differences(rows)
  rows.map { |row| difference(row)}
end

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

p corruption_checksum(input)
