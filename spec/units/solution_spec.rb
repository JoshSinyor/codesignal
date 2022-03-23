# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { input: [-1, 150, 190, 170, -1, -1, 160, 180], output: [-1, 150, 160, 170, -1, -1, 180, 190] }, # 01
  { input: [-1, -1, -1, -1, -1], output: [-1, -1, -1, -1, -1] }, # 02
  { input: [-1], output: [-1] }, # 03
  { input: [4, 2, 9, 11, 2, 16], output: [2, 2, 4, 9, 11, 16] }, # 04
  { input: [2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1], output: [1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2] }, # 05
  { input: [23, 54, -1, 43, 1, -1, -1, 77, -1, -1, -1, 3], output: [1, 3, -1, 23, 43, -1, -1, 54, -1, -1, -1, 77] } # 06
  # { input: , output:  }, # 07
  # { input: , output:  }, # 08
  # { input: , output:  }, # 09
  # { input: , output:  }, # 10
  # { input: , output:  }, # 11
  # { input: , output:  }, # 12
  # { input: , output:  }, # 13
  # { input: , output:  }, # 14
  # { input: , output:  }, # 15
  # { input: , output:  }, # 16
  # { input: , output:  }, # 17
  # { input: , output:  }, # 18
  # { input: , output:  }, # 19
  # { input: , output:  }  # 20
].freeze

describe 'solution' do
  it 'passes the supplied tests with 1 input and 1 output' do
    TEST_I_O.each do |element|
      expect(solution(element[:input])).to eq(element[:output])
    end
  end

  # it 'passes the supplied tests with 2 inputs and 1 output' do
  #   TEST_I_O.each do |element|
  #     expect(solution(element[:input1], element[:input2])).to eq(element[:output])
  #   end
  # end
end
