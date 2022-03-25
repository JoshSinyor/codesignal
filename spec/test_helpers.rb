# frozen_string_literal: true

# One input, one output

# TEST_I_O = [
#   { test: 1, input: , output:  }, # 01
#   { test: 2, input: , output:  }, # 02
#   { test: 3, input: , output:  }, # 03
#   { test: 4, input: , output:  }, # 04
#   { test: 5, input: , output:  }, # 05
#   { test: 6, input: , output:  }, # 06
#   { test: 7, input: , output:  }, # 07
#   { test: 8, input: , output:  }, # 08
#   { test: 9, input: , output:  }, # 09
#   { test: 10, input: , output:  }, # 10
#   { test: 11, input: , output:  }, # 11
#   { test: 12, input: , output:  }, # 12
#   { test: 13, input: , output:  }, # 13
#   { test: 14, input: , output:  }, # 14
#   { test: 15, input: , output:  }, # 15
#   { test: 16, input: , output:  }, # 16
#   { test: 17, input: , output:  }, # 17
#   { test: 18, input: , output:  }, # 18
#   { test: 19, input: , output:  }, # 19
#   { test: 20, input: , output:  }  # 20
# ].freeze
#
# describe 'solution' do
#   it 'passes the supplied tests with 1 input and 1 output' do
#     TEST_I_O.each do |element|
#       puts "Executing test #{element[:test]}..."
#       expect(solution(element[:input])).to eq(element[:output])
#       puts 'Passed.'
#     end
#   end
# end

# Two inputs, one output

# TEST_I_O = [
#   { test: 1, input1: , input2: , output:  }, # 01
#   { test: 2, input1: , input2: , output:  }, # 02
#   { test: 3, input1: , input2: , output:  }, # 03
#   { test: 4, input1: , input2: , output:  }, # 04
#   { test: 5, input1: , input2: , output:  }, # 05
#   { test: 6, input1: , input2: , output:  }, # 06
#   { test: 7, input1: , input2: , output:  }, # 07
#   { test: 8, input1: , input2: , output:  }, # 08
#   { test: 9, input1: , input2: , output:  }, # 09
#   { test: 10, input1: , input2: , output:  }, # 10
#   { test: 11, input1: , input2: , output:  }, # 11
#   { test: 12, input1: , input2: , output:  }, # 12
#   { test: 13, input1: , input2: , output:  }, # 13
#   { test: 14, input1: , input2: , output:  }, # 14
#   { test: 15, input1: , input2: , output:  }, # 15
#   { test: 16, input1: , input2: , output:  }, # 16
#   { test: 17, input1: , input2: , output:  }, # 17
#   { test: 18, input1: , input2: , output:  }, # 18
#   { test: 19, input1: , input2: , output:  }, # 19
#   { test: 20, input1: , input2: , output:  }  # 20
# ].freeze
#
# describe 'solution' do
#   it 'passes the supplied tests with 2 inputs and 1 output' do
#     TEST_I_O.each do |element|
#       puts "Executing test #{element[:test]}..."
#       expect(solution(element[:input1], element[:input2])).to eq(element[:output])
#       puts 'Passed.'
#     end
#   end
# end

# Three inputs, one output

# TEST_I_O = [
#   { test: 1, input1: , input2: , input3: , output:  }, # 01
#   { test: 2, input1: , input2: , input3: , output:  }, # 02
#   { test: 3, input1: , input2: , input3: , output:  }, # 03
#   { test: 4, input1: , input2: , input3: , output:  }, # 04
#   { test: 5, input1: , input2: , input3: , output:  }, # 05
#   { test: 6, input1: , input2: , input3: , output:  }, # 06
#   { test: 7, input1: , input2: , input3: , output:  }, # 07
#   { test: 8, input1: , input2: , input3: , output:  }, # 08
#   { test: 9, input1: , input2: , input3: , output:  }, # 09
#   { test: 10, input1: , input2: , input3: , output:  }, # 10
#   { test: 11, input1: , input2: , input3: , output:  }, # 11
#   { test: 12, input1: , input2: , input3: , output:  }, # 12
#   { test: 13, input1: , input2: , input3: , output:  }, # 13
#   { test: 14, input1: , input2: , input3: , output:  }, # 14
#   { test: 15, input1: , input2: , input3: , output:  }, # 15
#   { test: 16, input1: , input2: , input3: , output:  }, # 16
#   { test: 17, input1: , input2: , input3: , output:  }, # 17
#   { test: 18, input1: , input2: , input3: , output:  }, # 18
#   { test: 19, input1: , input2: , input3: , output:  }, # 19
#   { test: 20, input1: , input2: , input3: , output:  }  # 20
# ].freeze
#
# describe 'solution' do
#   it 'passes the supplied tests with 3 inputs and 1 output' do
#     TEST_I_O.each do |element|
#       puts "Executing test #{element[:test]}..."
#       expect(solution(element[:input1], element[:input2], element[:input3])).to eq(element[:output])
#       puts 'Passed.'
#     end
#   end
# end

# Four inputs, one output

# TEST_I_O = [
#   { test: 1, input1: , input2: , input3: , input4: , output:  }, # 01
#   { test: 2, input1: , input2: , input3: , input4: , output:  }, # 02
#   { test: 3, input1: , input2: , input3: , input4: , output:  }, # 03
#   { test: 4, input1: , input2: , input3: , input4: , output:  }, # 04
#   { test: 5, input1: , input2: , input3: , input4: , output:  }, # 05
#   { test: 6, input1: , input2: , input3: , input4: , output:  }, # 06
#   { test: 7, input1: , input2: , input3: , input4: , output:  }, # 07
#   { test: 8, input1: , input2: , input3: , input4: , output:  }, # 08
#   { test: 9, input1: , input2: , input3: , input4: , output:  }, # 09
#   { test: 10, input1: , input2: , input3: , input4: , output:  }, # 10
#   { test: 11, input1: , input2: , input3: , input4: , output:  }, # 11
#   { test: 12, input1: , input2: , input3: , input4: , output:  }, # 12
#   { test: 13, input1: , input2: , input3: , input4: , output:  }, # 13
#   { test: 14, input1: , input2: , input3: , input4: , output:  }, # 14
#   { test: 15, input1: , input2: , input3: , input4: , output:  }, # 15
#   { test: 16, input1: , input2: , input3: , input4: , output:  }, # 16
#   { test: 17, input1: , input2: , input3: , input4: , output:  }, # 17
#   { test: 18, input1: , input2: , input3: , input4: , output:  }, # 18
#   { test: 19, input1: , input2: , input3: , input4: , output:  }, # 19
#   { test: 20, input1: , input2: , input3: , input4: , output:  }  # 20
# ].freeze
#
# describe 'solution' do
#   it 'passes the supplied tests with 4 inputs and 1 output' do
#     TEST_I_O.each do |element|
#       puts "Executing test #{element[:test]}..."
#       expect(solution(element[:input1], element[:input2], element[:input3], element[:input4])).to eq(element[:output])
#       puts 'Passed.'
#     end
#   end
# end
