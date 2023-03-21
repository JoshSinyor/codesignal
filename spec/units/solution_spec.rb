# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, import: false, input: 'aabbbc', output: '2a3bc' }, # 01
  { test: 2, import: false, input: 'abbcabb', output: 'a2bca2b' }, # 02
  { test: 3, import: false, input: 'abcd', output: 'abcd' }, # 03
  { test: 4, import: false, input: 'zzzz', output: '4z' }, # 04
  { test: 5, import: false, input: 'wwwwwwwawwwwwww', output: '7wa7w' }, # 05
  { test: 6, import: false, input: 'ccccccccccccccc', output: '15c' }, # 06
  { test: 7, import: false, input: 'qwertyuioplkjhg', output: 'qwertyuioplkjhg' }, # 07
  { test: 8, import: false, input: 'ssiiggkooo', output: '2s2i2gk3o' }, # 08
  { test: 9, import: false, input: 'adfaaa', output: 'adf3a' }, # 09
  { test: 10, import: false, input: 'bbjaadlkjdl', output: '2bj2adlkjdl' } # 10
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
