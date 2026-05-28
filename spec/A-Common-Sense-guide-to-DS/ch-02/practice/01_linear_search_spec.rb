require_relative '../../../../A-Common-Sense-guide-to-DS/ch-02/practice/01_linear_search.rb'

describe 'Linear search element in ordered(asc) array' do
  let(:arr) { 100.times.map { Random.rand(10000) }.uniq.sort }

  it 'should fetch correct index for existing element' do
    index = Random.rand(arr.size)
    element = arr[index]
    idx = linear_search(arr, element)

    expect(idx).to eq index
  end

  it 'should return nil for non-existent element' do
    element = 10001

    expect(linear_search(arr, element)).to be_nil
  end
end
