# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, import: false, input: 152, output: 52 }, # 01
  { test: 2, import: false, input: 1001, output: 101 }, # 02
  { test: 3, import: false, input: 10, output: 1 }, # 03
  { test: 4, import: false, input: 222_219, output: 22_229 }, # 04
  { test: 5, import: false, input: 109, output: 19 }, # 05
  { test: 6, import: false, input: 222_250, output: 22_250 }, # 06
  { test: 7, import: false, input: 44_435, output: 4445 }, # 07
  { test: 8, import: false, input: 12, output: 2 }, # 08
  { test: 9, import: false, input: 218_616, output: 28_616 }, # 09
  { test: 10, import: false, input: 861_452, output: 86_452 } # 10
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
