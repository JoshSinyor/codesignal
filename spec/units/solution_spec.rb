# frozen_string_literal: true

require 'solution'

FILE_NAME = 'test-'
FILE_INPUT1 = 'inputArray'
FILE_INPUT2 = 'k'
FILE_INPUT3 = ''
FILE_INPUT4 = ''

TEST_I_O = [
  { test: 1, import: false, input1: [2, 3, 5, 1, 6], input2: 2, output: 8 }, # 01
  { test: 2, import: false, input1: [2, 4, 10, 1], input2: 2, output: 14 }, # 02
  { test: 3, import: false, input1: [1, 3, 2, 4], input2: 3, output: 9 }, # 03
  { test: 4, import: false, input1: [3, 2, 1, 1], input2: 1, output: 3 }, # 04
  { test: 5, import: false, input1: [1, 3, 4, 2, 4, 2, 4], input2: 4, output: 13 }, # 05
  { test: 6, import: 'json', input1: nil, input2: nil, output: nil }, # 06
  { test: 7, import: false, input1: [963, 741, 22, 851, 399, 382, 190, 247, 494, 452, 891, 532, 795, 920, 465, 831, 344, 391, 582, 897, 763, 951, 735, 806, 320, 702, 200, 59, 870, 345, 695, 321, 817, 83, 416, 36, 914, 335, 117, 985, 690, 303, 875, 556, 292, 309, 496, 791, 509, 360, 235, 784, 607, 341], input2: 23, output: 14_232 }, # 07
  { test: 8, import: 'json', input1: nil, input2: nil, output: nil }, # 08
  { test: 9, import: 'json', input1: nil, input2: nil, output: nil }, # 09
  { test: 10, import: 'json', input1: nil, input2: nil, output: nil } # 10
].freeze

describe 'solution' do
  it 'passes the supplied tests with 2 inputs and 1 output' do
    start_time = Time.new

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

    puts "Processing Time: #{((Time.now - start_time).to_f * 1000).round(5)} milliseconds."
  end
end
