# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, import: false, input: 'Ready, steady, go!', output: 'steady' }, # 01
  { test: 2, import: false, input: 'Ready[[[, steady, go!', output: 'steady' }, # 02
  { test: 3, import: false, input: 'ABCd', output: 'ABCd' }, # 03
  { test: 4, import: false, input: 'To be or not to be', output: 'not' }, # 04
  { test: 5, import: false, input: 'You are the best!!!!!!!!!!!! CodeFighter ever!', output: 'CodeFighter' } # 05
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
