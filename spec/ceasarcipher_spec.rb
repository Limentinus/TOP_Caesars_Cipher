require "./ceasarcipher.rb"

describe "#caesar_cipher" do
  it "returns lowercase characters shifted by 1" do
    expect(caesar_cipher("test", 1)).to eql("uftu")
  end

  it "returns ciphered words with spaces in their places" do
    expect(caesar_cipher("test another sentence", 1)).to eql("uftu bopuifs tfoufodf")
  end
end