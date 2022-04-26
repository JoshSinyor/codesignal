# frozen_string_literal: true

# Timing tests
# start_time = Time.new
# puts "Processing Time: #{((Time.now - start_time).to_f * 1000).round(5)} milliseconds."

# One input, one output

# FILE_NAME = 'test-'
# FILE_INPUT = ''

# TEST_I_O = [
#   { test: 1, import: false, input: , output:  }, # 01
#   { test: 2, import: false, input: , output:  }, # 02
#   { test: 3, import: false, input: , output:  }, # 03
#   { test: 4, import: false, input: , output:  }, # 04
#   { test: 5, import: false, input: , output:  }, # 05
#   { test: 6, import: false, input: , output:  }, # 06
#   { test: 7, import: false, input: , output:  }, # 07
#   { test: 8, import: false, input: , output:  }, # 08
#   { test: 9, import: false, input: , output:  }, # 09
#   { test: 10, import: false, input: , output:  }, # 10
#   { test: 11, import: false, input: , output:  }, # 11
#   { test: 12, import: false, input: , output:  }, # 12
#   { test: 13, import: false, input: , output:  }, # 13
#   { test: 14, import: false, input: , output:  }, # 14
#   { test: 15, import: false, input: , output:  }, # 15
#   { test: 16, import: false, input: , output:  }, # 16
#   { test: 17, import: false, input: , output:  }, # 17
#   { test: 18, import: false, input: , output:  }, # 18
#   { test: 19, import: false, input: , output:  }, # 19
#   { test: 20, import: false, input: , output:  } # 20
# ].freeze
#
# describe 'solution' do
#   it 'passes the supplied tests with 1 input and 1 output' do
#     TEST_I_O.each do |element|
#       case element[:import]
#       when 'json'
#         file = JSON.parse(open("docs/#{FILE_NAME}#{element[:test]}.json").read)
#         element[:input1] = file['input'][FILE_INPUT]
#         element[:output] = file['output']
#       end

#       puts "  Executing test #{element[:test]}..."
#       expect(solution(element[:input])).to eq(element[:output])
#       puts '    Passed.'
#     end
#   end
# end

# Two inputs, one output

# FILE_NAME = 'test-'
# FILE_INPUT1 = ''
# FILE_INPUT2 = ''

# TEST_I_O = [
#   { test: 1, import: false, input1: , input2: , output:  }, # 01
#   { test: 2, import: false, input1: , input2: , output:  }, # 02
#   { test: 3, import: false, input1: , input2: , output:  }, # 03
#   { test: 4, import: false, input1: , input2: , output:  }, # 04
#   { test: 5, import: false, input1: , input2: , output:  }, # 05
#   { test: 6, import: false, input1: , input2: , output:  }, # 06
#   { test: 7, import: false, input1: , input2: , output:  }, # 07
#   { test: 8, import: false, input1: , input2: , output:  }, # 08
#   { test: 9, import: false, input1: , input2: , output:  }, # 09
#   { test: 10, import: false, input1: , input2: , output:  }, # 10
#   { test: 11, import: false, input1: , input2: , output:  }, # 11
#   { test: 12, import: false, input1: , input2: , output:  }, # 12
#   { test: 13, import: false, input1: , input2: , output:  }, # 13
#   { test: 14, import: false, input1: , input2: , output:  }, # 14
#   { test: 15, import: false, input1: , input2: , output:  }, # 15
#   { test: 16, import: false, input1: , input2: , output:  }, # 16
#   { test: 17, import: false, input1: , input2: , output:  }, # 17
#   { test: 18, import: false, input1: , input2: , output:  }, # 18
#   { test: 19, import: false, input1: , input2: , output:  }, # 19
#   { test: 20, import: false, input1: , input2: , output:  } # 20
# ].freeze
#
# describe 'solution' do
#   it 'passes the supplied tests with 2 inputs and 1 output' do
#     TEST_I_O.each do |element|
#       case element[:import]
#       when 'json'
#         file = JSON.parse(open("docs/#{FILE_NAME}#{element[:test]}.json").read)
#         element[:input1] = file['input'][FILE_INPUT1]
#         element[:input2] = file['input'][FILE_INPUT2]
#         element[:output] = file['output']
#       end

#       puts "  Executing test #{element[:test]}..."
#       expect(solution(element[:input1], element[:input2])).to eq(element[:output])
#       puts '    Passed.'
#     end
#   end
# end

# Three inputs, one output

# FILE_NAME = 'test-'
# FILE_INPUT1 = ''
# FILE_INPUT2 = ''
# FILE_INPUT3 = ''

# TEST_I_O = [
#   { test: 1, import: false, input1: , input2: , input3: , output:  }, # 01
#   { test: 2, import: false, input1: , input2: , input3: , output:  }, # 02
#   { test: 3, import: false, input1: , input2: , input3: , output:  }, # 03
#   { test: 4, import: false, input1: , input2: , input3: , output:  }, # 04
#   { test: 5, import: false, input1: , input2: , input3: , output:  }, # 05
#   { test: 6, import: false, input1: , input2: , input3: , output:  }, # 06
#   { test: 7, import: false, input1: , input2: , input3: , output:  }, # 07
#   { test: 8, import: false, input1: , input2: , input3: , output:  }, # 08
#   { test: 9, import: false, input1: , input2: , input3: , output:  }, # 09
#   { test: 10, import: false, input1: , input2: , input3: , output:  }, # 10
#   { test: 11, import: false, input1: , input2: , input3: , output:  }, # 11
#   { test: 12, import: false, input1: , input2: , input3: , output:  }, # 12
#   { test: 13, import: false, input1: , input2: , input3: , output:  }, # 13
#   { test: 14, import: false, input1: , input2: , input3: , output:  }, # 14
#   { test: 15, import: false, input1: , input2: , input3: , output:  }, # 15
#   { test: 16, import: false, input1: , input2: , input3: , output:  }, # 16
#   { test: 17, import: false, input1: , input2: , input3: , output:  }, # 17
#   { test: 18, import: false, input1: , input2: , input3: , output:  }, # 18
#   { test: 19, import: false, input1: , input2: , input3: , output:  }, # 19
#   { test: 20, import: false, input1: , input2: , input3: , output:  } # 20
# ].freeze

# describe 'solution' do
#   it 'passes the supplied tests with 3 inputs and 1 output' do
#     TEST_I_O.each do |element|
#       case element[:import]
#       when 'json'
#         file = JSON.parse(open("docs/#{FILE_NAME}#{element[:test]}.json").read)
#         element[:input1] = file['input'][FILE_INPUT1]
#         element[:input2] = file['input'][FILE_INPUT2]
#         element[:input3] = file['input'][FILE_INPUT3]
#         element[:output] = file['output']
#       end

#       puts "  Executing test #{element[:test]}..."
#       expect(solution(element[:input1], element[:input2], element[:input3])).to eq(element[:output])
#       puts '    Passed.'
#     end
#   end
# end

# Four inputs, one output

# FILE_NAME = 'test-'
# FILE_INPUT1 = ''
# FILE_INPUT2 = ''
# FILE_INPUT3 = ''
# FILE_INPUT4 = ''

# TEST_I_O = [
#   { test: 1, import: false, input1: , input2: , input3: , input4: , output:  }, # 01
#   { test: 2, import: false, input1: , input2: , input3: , input4: , output:  }, # 02
#   { test: 3, import: false, input1: , input2: , input3: , input4: , output:  }, # 03
#   { test: 4, import: false, input1: , input2: , input3: , input4: , output:  }, # 04
#   { test: 5, import: false, input1: , input2: , input3: , input4: , output:  }, # 05
#   { test: 6, import: false, input1: , input2: , input3: , input4: , output:  }, # 06
#   { test: 7, import: false, input1: , input2: , input3: , input4: , output:  }, # 07
#   { test: 8, import: false, input1: , input2: , input3: , input4: , output:  }, # 08
#   { test: 9, import: false, input1: , input2: , input3: , input4: , output:  }, # 09
#   { test: 10, import: false, input1: , input2: , input3: , input4: , output:  }, # 10
#   { test: 11, import: false, input1: , input2: , input3: , input4: , output:  }, # 11
#   { test: 12, import: false, input1: , input2: , input3: , input4: , output:  }, # 12
#   { test: 13, import: false, input1: , input2: , input3: , input4: , output:  }, # 13
#   { test: 14, import: false, input1: , input2: , input3: , input4: , output:  }, # 14
#   { test: 15, import: false, input1: , input2: , input3: , input4: , output:  }, # 15
#   { test: 16, import: false, input1: , input2: , input3: , input4: , output:  }, # 16
#   { test: 17, import: false, input1: , input2: , input3: , input4: , output:  }, # 17
#   { test: 18, import: false, input1: , input2: , input3: , input4: , output:  }, # 18
#   { test: 19, import: false, input1: , input2: , input3: , input4: , output:  }, # 19
#   { test: 20, import: false, input1: , input2: , input3: , input4: , output:  } # 20
# ].freeze
#
# describe 'solution' do
#   it 'passes the supplied tests with 4 inputs and 1 output' do
#     TEST_I_O.each do |element|
#       case element[:import]
#       when 'json'
#         file = JSON.parse(open("docs/#{FILE_NAME}#{element[:test]}.json").read)
#         element[:input1] = file['input'][FILE_INPUT1]
#         element[:input2] = file['input'][FILE_INPUT2]
#         element[:input3] = file['input'][FILE_INPUT3]
#         element[:input4] = file['input'][FILE_INPUT4]
#         element[:output] = file['output']
#       end

#       puts "  Executing test #{element[:test]}..."
#       expect(solution(element[:input1], element[:input2], element[:input3], element[:input4])).to eq(element[:output])
#       puts '    Passed.'
#     end
#   end
# end
