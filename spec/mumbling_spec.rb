def mumble(str)
  return "" if str == "" || str.nil?
  result = ""
  arr = str.downcase.chars
    arr.each_with_index { |i, n| result << i.to_s.capitalize << i*n << "-" }
  return result.chomp"-"
end

describe "Mumbling" do
  it "can mumble a single letter" do
    expect(mumble("a")).to eq("A")
    expect(mumble("b")).to eq("B")
    expect(mumble("")).to eq("")
  end

  it "can mumble 2 letters" do
    expect(mumble("ab")).to eq("A-Bb")
    expect(mumble("cd")).to eq("C-Dd")
  end

  it "can mumble more letters" do
    expect(mumble("aBCd")).to eq("A-Bb-Ccc-Dddd")
    expect(mumble(nil)).to eq("")
  end

end