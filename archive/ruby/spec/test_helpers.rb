# frozen_string_literal: true

# # # Timing tests # # #
# Inside describe 'n' do

# it 'passes the supplied tests with n inputs and n output' do
#   start_time = Time.new
#   repetitions = 1
#   repetitions.times do
#     TEST_I_O.each do |element|
#       [...]
#     end
#   end

#   repetitions = repetitions.to_s.reverse.scan(/\d{1,3}/).join(',').reverse
#   processing_time = ((Time.now - start_time).to_f * 1000).round(5)
#   puts "  Processing time (#{repetitions} repetitions): #{processing_time} milliseconds."
# end

# # # JSon input # # #
# Inside solution_spec.rb

# FILE_NAME = 'test-'
# FILE_INPUT1 = ''
# FILE_INPUT2 = ''
# FILE_INPUT3 = ''
# FILE_INPUT4 = ''
# FILE_INPUT5 = ''

# Inside TEST_I_O.each do |element|

#       case element[:import]
#       when 'json'
#         file = JSON.parse(open("docs/#{FILE_NAME}#{element[:test]}.json").read)
#         element[:input1] = file['input'][FILE_INPUT1]
#         element[:input2] = file['input'][FILE_INPUT2]
#         element[:input3] = file['input'][FILE_INPUT3]
#         element[:input4] = file['input'][FILE_INPUT4]
#         element[:input4] = file['input'][FILE_INPUT5]
#       end

# One input, one output

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
#       puts "  Executing test #{element[:test]}..."
#       expect(solution(element[:input])).to eq(element[:output])
#       puts '    Passed.'
#     end
#   end
# end

# Two inputs, one output

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
#       puts "  Executing test #{element[:test]}..."
#       expect(solution(element[:input1], element[:input2])).to eq(element[:output])
#       puts '    Passed.'
#     end
#   end
# end

# Three inputs, one output

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
#       puts "  Executing test #{element[:test]}..."
#       expect(solution(element[:input1], element[:input2], element[:input3])).to eq(element[:output])
#       puts '    Passed.'
#     end
#   end
# end

# Four inputs, one output

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

# describe 'solution' do
#   it 'passes the supplied tests with 4 inputs and 1 output' do
#     TEST_I_O.each do |element|
#       case element[:import]
#       puts "  Executing test #{element[:test]}..."
#       expect(solution(element[:input1], element[:input2], element[:input3], element[:input4])).to eq(element[:output])
#       puts '    Passed.'
#     end
#   end
# end

# Five inputs, one output

# TEST_I_O = [
#   { test: 1, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 01
#   { test: 2, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 02
#   { test: 3, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 03
#   { test: 4, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 04
#   { test: 5, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 05
#   { test: 6, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 06
#   { test: 7, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 07
#   { test: 8, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 08
#   { test: 9, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 09
#   { test: 10, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 10
#   { test: 11, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 11
#   { test: 12, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 12
#   { test: 13, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 13
#   { test: 14, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 14
#   { test: 15, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 15
#   { test: 16, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 16
#   { test: 17, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 17
#   { test: 18, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 18
#   { test: 19, import: false, input1: , input2: , input3: , input4: , input5: , output:  }, # 19
#   { test: 20, import: false, input1: , input2: , input3: , input4: , input5: , output:  } # 20
# ].freeze

# describe 'solution' do
#   it 'passes the supplied tests with 5 inputs and 1 output' do
#     TEST_I_O.each do |element|
#       puts "  Executing test #{element[:test]}..."
#       expect(solution(element[:input1], element[:input2], element[:input3], element[:input4],
#                       element[:input5])).to eq(element[:output])
#       puts '    Passed.'
#     end
#   end
# end
