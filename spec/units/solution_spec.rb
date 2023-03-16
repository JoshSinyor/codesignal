# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, import: false, input: '00-1B-63-84-45-E6', output: true }, # 01
  { test: 2, import: false, input: 'Z1-1B-63-84-45-E6', output: false }, # 02
  { test: 3, import: false, input: 'not a MAC-48 address', output: false }, # 03
  { test: 4, import: false, input: 'FF-FF-FF-FF-FF-FF', output: true }, # 04
  { test: 5, import: false, input: '00-00-00-00-00-00', output: true }, # 05
  { test: 6, import: false, input: 'G0-00-00-00-00-00', output: false }, # 06
  { test: 7, import: false, input: '02-03-04-05-06-07-', output: false }, # 07
  { test: 8, import: false, input: '12-34-56-78-9A-BC', output: true }, # 08
  { test: 9, import: false, input: 'FF-FF-AB-CD-EA-BC', output: true }, # 09
  { test: 10, import: false, input: '12-34-56-78-9A-BG', output: false } # 10
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
