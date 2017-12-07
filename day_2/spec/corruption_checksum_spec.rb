require 'corruption_checksum.rb'

describe "Corruption Checksum - part 1" do
  it "finds the difference between the smallest and largest number in a row" do
    expect(difference([5,1,9,5])).to eq 8
  end

  it "saves the differences of multiple rows in an array" do
      expect(get_all_differences([[5,1,9,5], [7,5,3], [2,4,6,8]])).to eq [8, 4, 6]
  end

  it "sums all the differences" do
    expect(corruption_checksum([[5,1,9,5], [7,5,3], [2,4,6,8]])).to eq 18
  end
end

describe "Corruption Checksum - part 2" do

  it "knows if a number is whole" do
    expect(whole?(6)).to be true
  end

  it "knows if a number isn't whole" do
    expect(whole?(5.5)).to be false
  end

  it "finds the numbers that evenly divide" do
    expect(get_evenly_divisible([5,9,2,8])).to eq [8,2]
  end

  it "saves all divisions pf multiple rows in an array" do
    expect(get_divisions([[5,9,2,8], [9, 4, 7, 3], [3, 8, 6, 5]])).to eq [4,3,2]
  end

  it "sums all the divisions" do
    expect(second_corruption_checksum([[5,9,2,8], [9, 4, 7, 3], [3, 8, 6, 5]])).to eq 9
  end

end
