# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, import: false, input: '13:58', output: true }, # 01
  { test: 2, import: false, input: '25:51', output: false }, # 02
  { test: 3, import: false, input: '02:76', output: false }, # 03
  { test: 4, import: false, input: '24:00', output: false }, # 04
  { test: 5, import: false, input: '02:61', output: false }, # 05
  { test: 6, import: false, input: '27:00', output: false }, # 06
  { test: 7, import: false, input: '19:66', output: false }, # 07
  { test: 8, import: false, input: '12:31', output: true }, # 08
  { test: 9, import: false, input: '25:73', output: false }, # 09
  { test: 10, import: false, input: '09:56', output: true }, # 10
  { test: 11, import: false, input: '03:29', output: true } # 11
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
