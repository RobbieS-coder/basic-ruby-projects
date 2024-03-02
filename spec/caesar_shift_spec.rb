require './caesar-shift/caesar-shift.rb'

describe '#caesar_cipher' do
  it 'shifts lowercase letters correctly' do
    expect(caesar_cipher('Hello, World!', 1)).to eq('Ifmmp, Xpsme!')
  end

  it 'shifts uppercase letters correctly' do
    expect(caesar_cipher('Hello, World!', 3)).to eq('Khoor, Zruog!')
  end

  it 'does not shift non-alphabetic characters' do
    expect(caesar_cipher('Hello, World!', 5)).to eq('Mjqqt, Btwqi!')
  end

  it 'wraps around the alphabet for positive shifts' do
    expect(caesar_cipher('Hello, World!', 5)).to eq('Mjqqt, Btwqi!')
  end

  it 'wraps around the alphabet for negative shifts' do
    expect(caesar_cipher('Hello, World!', -3)).to eq('Ebiil, Tloia!')
  end

  it 'handles large shifts correctly' do
    expect(caesar_cipher('Hello, World!', 26)).to eq('Hello, World!')
  end

  it 'handles large negative shifts correctly' do
    expect(caesar_cipher('Hello, World!', -26)).to eq('Hello, World!')
  end
end