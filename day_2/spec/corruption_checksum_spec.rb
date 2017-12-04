require 'corruption_checksum.rb'

describe "Corruption Checksum" do
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
