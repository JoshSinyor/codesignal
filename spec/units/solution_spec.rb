# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, import: false, input1: [2, 3, 5, 2], input2: 3, output: 2 }, # 01
  { test: 2, import: false, input1: [1, 3, 3, 1, 1], input2: 0, output: 0 }, # 02
  { test: 3, import: false, input1: [5, 1, 3, 4, 1], input2: 0, output: 1 }, # 03
  { test: 4, import: false, input1: [1, 1, 1, 1], input2: 1, output: 4 }, # 04
  { test: 5, import: false, input1: [1, 1, 1, 1], input2: 0, output: 0 }, # 05
  { test: 6, import: false, input1: [3, 1, 1, 3, 1], input2: 2, output: 2 } # 06
].freeze

describe 'solution' do
  it 'passes the supplied tests with 2 inputs and 1 output' do
    TEST_I_O.each do |element|
      case element[:import]
      when 'json'
        file = JSON.parse(open("docs/#{FILE_NAME}#{element[:test]}.json").read)
        element[:input1] = file['input'][FILE_INPUT1]
        element[:input2] = file['input'][FILE_INPUT2]
        element[:output] = file['output']
      end

      puts "  Executing test #{element[:test]}..."
      expect(solution(element[:input1], element[:input2])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
