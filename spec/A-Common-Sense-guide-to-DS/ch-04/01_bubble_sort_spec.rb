require_relative '../../../A-Common-Sense-guide-to-DS/ch-04/01_bubble_sort.rb'
require 'debug'

describe 'Sort an unsorted Array in ascending order using bubble sort' do
  let(:arr1) { Array.new(10) { |_| Random.rand(100) } }
  let(:arr2) { Array.new(15) { |_| Random.rand(100) } }
  let(:arr3) { Array.new(Random.rand(1000)) { |_| Random.rand(10000) } }

  it 'sorts even sized array' do
    sorted_array = arr1.sort
    bubble_sorted_array = bubble_sort(arr1)

    expect(sorted_array).to match_array(bubble_sorted_array)
  end

  it 'sorts odd sized array' do
    sorted_array = arr2.sort
    bubble_sorted_array = bubble_sort(arr2)

    expect(sorted_array).to match_array(bubble_sorted_array)
  end

  it 'sorts randomly sized array' do
    sorted_array = arr3.sort
    bubble_sorted_array = bubble_sort(arr3)

    expect(sorted_array).to match_array(bubble_sorted_array)
  end
end
