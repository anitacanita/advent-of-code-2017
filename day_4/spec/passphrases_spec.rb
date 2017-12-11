require 'passphrases.rb'

describe 'High-Entropy Passphrases - part 1' do
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

describe 'High-Entropy Passphrases - part 2' do
  it "knows if there aren't any anagram words" do
    expect(any_anagrams?('abcde fghij')).to be true
  end

  it "knows if there are any anagram words" do
    expect(any_anagrams?("abcde xyz ecdab")).to be false
  end

  it "counts how many valid passphrases" do
    expect(second_count_valid_passphrases(["abcde fghij", "abcde xyz ecdab", "a ab abc abd abf abj" ])).to eq 2
  end
end
