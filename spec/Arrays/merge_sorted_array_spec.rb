require_relative '../../Arrays/merge_sorted_array'

RSpec.describe 'Merge two sorted array' do
  ARRAY1 = [1,2,3,4]
  ARRAY2 = [3,4,7]
  ARRAY3 = []
  ARRAY4 = [2,4,46,55]

  it { expect(merge_sorted_array(ARRAY1, ARRAY2)).to eq [1,2,3,3,4,4,7] }
  it { expect(merge_sorted_array(ARRAY1, ARRAY3)).to eq [1,2,3,4] }
  it { expect(merge_sorted_array(ARRAY1, ARRAY4)).to eq [1,2,2,3,4,4,46,55] }
  it { expect(merge_sorted_array(ARRAY2, ARRAY4)).to eq [2,3,4,4,7,46,55] }
end