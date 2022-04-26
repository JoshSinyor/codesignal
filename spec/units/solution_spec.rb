# frozen_string_literal: true

require 'solution'

FILE_NAME = 'test-'
FILE_INPUT1 = ''
FILE_INPUT2 = ''
FILE_INPUT3 = ''

TEST_I_O = [
  { test: 1, import: false, input1: 100, input2: 10, input3: 910, output: 10 }, # 01
  { test: 2, import: false, input1: 10, input2: 9, input3: 4, output: 1 }, # 02
  { test: 3, import: false, input1: 5, input2: 2, input3: 7, output: 2 }, # 03
  { test: 4, import: false, input1: 7, input2: 3, input3: 443, output: 110 }, # 04
  { test: 5, import: false, input1: 6, input2: 5, input3: 10, output: 5 } # 05
].freeze

describe 'solution' do
  it 'passes the supplied tests with 3 inputs and 1 output' do
    TEST_I_O.each do |element|
      case element[:import]
      when 'json'
        file = JSON.parse(open("docs/#{FILE_NAME}#{element[:test]}.json").read)
        element[:input1] = file['input'][FILE_INPUT1]
        element[:input2] = file['input'][FILE_INPUT2]
        element[:input3] = file['input'][FILE_INPUT3]
        element[:output] = file['output']
      end

      puts "  Executing test #{element[:test]}..."
      expect(solution(element[:input1], element[:input2], element[:input3])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
