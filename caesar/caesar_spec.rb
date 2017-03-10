require 'caesar'

describe "#caesar_cipher" do
  it "decrypts a single word" do
	expect(caesar_cipher('word', 1)).to eql('xpse')
  end

  it 'decrypts a sentence' do
  	expect(caesar_cipher('it is a sentence', 1)).to eql('ju jt b tfoufodf')
  end

  it 'decrypts capital letters' do
  	expect(caesar_cipher('Made in USSR', 1)).to eql('Nbef jo VTTS')
  end

  it 'does not change numbers' do
  	expect(caesar_cipher('1337', 1)).to eql('1337')
  end

  it 'does not change punctuation' do
    expect(caesar_cipher(":) ,.!?", 1)).to eql(":) ,.!?")
  end

  it 'wraps from z to a' do
    expect(caesar_cipher('tuv wxyz', 10)).to eql('def ghij')
  end
end