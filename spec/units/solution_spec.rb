# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, import: false, input: 12, output: 26 }, # 01
  { test: 2, import: false, input: 19, output: -1 }, # 02
  { test: 3, import: false, input: 450, output: 2559 }, # 03
  { test: 4, import: false, input: 0, output: 10 }, # 04
  { test: 5, import: false, input: 13, output: -1 }, # 05
  { test: 6, import: false, input: 1, output: 1 }, # 06
  { test: 7, import: false, input: 243, output: 399 }, # 07
  { test: 8, import: false, input: 576, output: 889 }, # 08
  { test: 9, import: false, input: 360, output: 589 } # 09
].freeze

describe 'solution' do
  it 'passes the supplied tests with 1 input and 1 output' do
    TEST_I_O.each do |element|
      case element[:import]
      when 'json'
        file = JSON.parse(open("docs/#{FILE_NAME}#{element[:test]}.json").read)
        element[:input1] = file['input'][FILE_INPUT]
        element[:output] = file['output']
      end

      puts "  Executing test #{element[:test]}..."
      expect(solution(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
