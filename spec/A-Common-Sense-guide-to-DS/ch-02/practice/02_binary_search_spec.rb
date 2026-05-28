require_relative '../../../../A-Common-Sense-guide-to-DS/ch-02/practice/02_binary_search.rb'

describe 'Binary search element in ordered(asc) array' do
  let(:size) { 100000 }
  let(:arr) { size.times.map { Random.rand(size) }.uniq.sort }

  it 'should fetch correct index for existing element' do
    index = Random.rand(arr.size)
    element = arr[index]
    idx = binary_search(arr, element)

    expect(idx).to eq index
  end

  it 'should return nil for non-existent element' do
    element = size + 1

    expect(binary_search(arr, element)).to be_nil
  end
end
