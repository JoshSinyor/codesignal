# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { input: [1, 3, 2, 1], output: false },
  { input: [1, 3, 2], output: true },
  { input: [1, 2, 1, 2], output: false },
  { input: [3, 6, 5, 8, 10, 20, 15], output: false },
  { input: [1, 1, 2, 3, 4, 4], output: false },
  { input: [1, 4, 10, 4, 2], output: false },
  { input: [10, 1, 2, 3, 4, 5], output: true },
  { input: [1, 1, 1, 2, 3], output: false },
  { input: [0, -2, 5, 6], output: true },
  { input: [1, 2, 3, 4, 5, 3, 5, 6], output: false },
  { input: [40, 50, 60, 10, 20, 30], output: false },
  { input: [1, 1], output: true },
  { input: [1, 2, 5, 3, 5], output: true },
  { input: [1, 2, 5, 5, 5], output: false },
  { input: [10, 1, 2, 3, 4, 5, 6, 1], output: false },
  { input: [1, 2, 3, 4, 3, 6], output: true },
  { input: [1, 2, 3, 4, 99, 5, 6], output: true },
  { input: [123, -17, -5, 1, 2, 3, 12, 43, 45], output: true },
  { input: [3, 5, 67, 98, 3], output: true }
].freeze

describe 'solution' do
  it 'passes the specified tests' do
    TEST_I_O.each do |element|
      expect(solution(element[:input])).to eq(element[:output]),
                                           "Expected input #{element[:input]} to equal #{element[:output]}."
    end
  end
end
