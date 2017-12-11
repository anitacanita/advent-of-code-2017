# read file #
  def get_input(file)
    input_file = File.readlines(file)

    input_file.map do |line|
      line.split { |row| row.split(/\t/) }
    end
  end

  def prepare_input(input_file)
    get_input(input_file).map { |a| a.join.to_i}
  end

# part 1 ##

class MazeRunner

  attr_accessor :counter

  def initialize(maze)
    @maze = maze
    @counter = 0
  end

  def run_maze
    length = @maze.length
    current_index = 0

    while current_index >= 0 && current_index < length do
      nr_jumps = @maze[current_index]
      increment_maze_at(current_index)
      @counter += 1
      current_index += nr_jumps
    end
    @counter
  end

private

  def increment_maze_at(position)
    @maze[position] = @maze[position] + 1
  end
end

maze = prepare_input("input.txt")

maze_runner_2 = MazeRunner.new(maze)

p "Number of count_steps: #{maze_runner_2.run_maze}"
