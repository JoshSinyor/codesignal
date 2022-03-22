# frozen_string_literal: true

require 'example'

describe 'example_method' do
  it 'passes the first test' do
    expect(example_method([3, 6, -2, -5, 7, 3])).to eq 21
  end
end
