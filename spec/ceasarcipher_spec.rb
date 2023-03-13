require "./ceasarcipher.rb"

describe "#caesar_cipher" do
  it "returns lowercase characters shifted by 1" do
    expect(caesar_cipher("test", 1)).to eql("uftu")
  end
end