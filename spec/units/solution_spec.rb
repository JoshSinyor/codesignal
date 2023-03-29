# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, import: false, input: '2 apples, 12 oranges', output: 14 }, # 01
  { test: 2, import: false, input: '123450', output: 123_450 }, # 02
  { test: 3, import: false, input: 'Your payment method is invalid', output: 0 }, # 03
  { test: 4, import: false, input: 'no digits at all', output: 0 }, # 04
  { test: 5, import: false, input: 'there are some (12) digits 5566 in this 770 string 239', output: 6587 }, # 05
  { test: 6, import: false, input: '42+781', output: 823 }, # 06
  { test: 7, import: false, input: 'abc abc 4 abc 0 abc', output: 4 }, # 07
  { test: 8, import: false, input: 'abcdefghijklmnopqrstuvwxyz1AbCdEfGhIjKlMnOpqrstuvwxyz23,74 -', output: 98 } # 08
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
