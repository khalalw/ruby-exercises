require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe 'Caesar Cipher' do
  it 'handles the shift' do
    solution = Solution.new
    expect(solution.caesar_cipher("What a string!", 5)).to eq('Bmfy f xywnsl!')
  end
end
