require "inverse_captcha.rb"

describe "Inverse Captcha - part 1" do

  it 'sums 2 matching digits' do
    expect(captcha(1111)).to eq 4
  end

  it 'produces 0 when no digit matches the next' do
    expect(captcha(1234)).to eq 0
  end

  it 'sums 2 matching digits' do
    expect(captcha(1122)).to eq 3
  end

  it 'sums first and last matching digits' do
    expect(captcha(91212129)).to eq 9
  end

end

describe "Inverse Captcha - part 2" do
  it "finds the number of steps to use for digit comparison" do
    expect(get_steps(1212)).to eq 2
    expect(get_steps(123412)).to eq 3
  end

  it 'sums 2 matching digits' do
    expect(second_captcha(1212)).to eq 6
  end

  it 'produces 0 when no digit matches the next' do
    expect(second_captcha(1221)).to eq 0
  end

end
