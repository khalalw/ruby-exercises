require 'spec_helper'
require_relative '../stock_picker'

RSpec.describe 'Stock Picker' do
  solution = Solution.new
  it 'handles basic case' do
    expect(solution.stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
    expect(solution.stock_picker([7, 1, 5, 3, 6, 4])).to eq([1, 4])
  end
  it 'handle descending numbers' do
    expect(solution.stock_picker([7, 6, 4, 3, 1])).to eq([])
  end
end
