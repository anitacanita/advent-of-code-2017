require 'passphrases.rb'

describe 'High-Entropy Passphrases' do
  it "knows if there aren't any duplicate words" do
    expect(valid?('aa bb cc dd ee')).to be true
  end

  it "knows if there are any duplicate words" do
    expect(valid?('aa bb cc dd aa')).to be false
  end

  it "counts how many valid passphrases" do
    expect(count_valid_passphrases(['aa bb cc dd aa', 'aa bb cc dd ee', 'aa bb cc dd aaa'])).to eq 2
  end
end
