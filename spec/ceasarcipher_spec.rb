require "./ceasarcipher.rb"

describe "#caesar_cipher" do
  it "returns lowercase characters shifted by 1" do
    expect(caesar_cipher("test", 1)).to eql("uftu")
  end

  it "returns ciphered words with spaces in their places" do
    expect(caesar_cipher("test another sentence", 1)).to eql("uftu bopuifs tfoufodf")
  end

  it "returns punctuation unaltered" do
    expect(caesar_cipher(".,?", 1)).to eql(".,?")
  end

  it "returns a sentence with uppercase and lowercase characters shifted by 8" do
    expect(caesar_cipher("This is a TEST. IT WORKS!", 8)).to eql("Bpqa qa i BMAB. QB EWZSA!")
  end
end