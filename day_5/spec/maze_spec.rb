require 'maze.rb'

describe MazeRunner do
  maze = [0, 3, 0, 1, -3]

  let(:maze_runner) {MazeRunner.new(maze)}

  it "works" do
    expect(maze_runner.run_maze).to eq 5
  end

end
