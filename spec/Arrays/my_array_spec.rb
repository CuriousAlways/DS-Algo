require_relative '../../Arrays/my_array'

RSpec.describe 'MyArray' do
  let(:arr) { MyArray.new }

  def push_n_items(n)
    n.times do |i|
      arr.push(i)
    end
  end

  it 'allows to push items' do
    arr.push(2)
    arr.push(3)

    expect(arr.inspect).to eq [2,3]
  end

  it 'allows to get item at specific index' do
    push_n_items(5)

    expect(arr.get(0)).to eq 0
    expect(arr.get(3)).to eq 3
    expect(arr.get(10)).to be_nil
  end

  it 'allows to get size' do
    expect(arr.size).to be_zero
    
    push_n_items(4)

    expect(arr.size).to eq 4
  end

  it 'allows to delete item at specific index' do
    push_n_items(6)
    removed_item = arr.delete_at_index(3)

    expect(removed_item).to eq 3
    expect(arr.size).to eq 5
    expect(arr.inspect).to eq [0,1,2,4,5]
  end
end