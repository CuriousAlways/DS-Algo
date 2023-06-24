require_relative '../../Arrays/reverse_string'

RSpec.describe 'Reverse String' do
  TEXT1 = 'Some very useL3$$ t3xt'
  TEXT2 = 'Some more text here'

  it{ expect(reverse(TEXT1)).to eq TEXT1.reverse }
  it{ expect(reverse(TEXT2)).to eq TEXT2.reverse }
  it{ expect(reverse('a')).to eq 'a' }
  it{ expect(reverse('')).to eq '' }
end