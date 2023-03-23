# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, import: false, input: 'a1', output: 2 }, # 01
  { test: 2, import: false, input: 'c2', output: 6 }, # 02
  { test: 3, import: false, input: 'd4', output: 8 }, # 03
  { test: 4, import: false, input: 'g6', output: 6 }, # 04
  { test: 5, import: false, input: 'a3', output: 4 }, # 05
  { test: 6, import: false, input: 'b7', output: 4 }, # 06
  { test: 7, import: false, input: 'h8', output: 2 }, # 07
  { test: 8, import: false, input: 'h6', output: 4 }, # 08
  { test: 9, import: false, input: 'g8', output: 3 }, # 09
  { test: 10, import: false, input: 'a5', output: 4 } # 10
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
