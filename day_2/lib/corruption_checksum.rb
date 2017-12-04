def corruption_checksum(rows)
  get_all_differences(rows).reduce(:+)
end

def difference(row)
  row.max - row.min
end

def get_all_differences(rows)
  rows.map { |row| difference(row)}
end



input_file = File.readlines("input.txt")

prepped_input = input_file.map { |line| line.split {|row| row.split(/\t/)}}.map { |a| a.map {|n| n.to_i}}

p corruption_checksum(prepped_input)
