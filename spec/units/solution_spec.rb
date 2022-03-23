# frozen_string_literal: true

# frozen_string_literal:

require 'solution'

TEST_I_O = [
  { input1: 'aabcc', input2: 'adcaa', output: 3 }, # 01
  { input1: 'zzzz', input2: 'zzzzzzz', output: 4 }, # 02
  { input1: 'abca', input2: 'xyzbac', output: 3 } # 03
  # { input1: , input2: , output:  }, #04
  # { input1: , input2: , output:  }, #05
  # { input1: , input2: , output:  }, #06
  # { input1: , input2: , output:  }, #07
  # { input1: , input2: , output:  }, #08
  # { input1: , input2: , output:  }, #09
  # { input1: , input2: , output:  }, #10
  # { input1: , input2: , output:  }, #11
  # { input1: , input2: , output:  }, #12
  # { input1: , input2: , output:  }, #13
  # { input1: , input2: , output:  }, #14
  # { input1: , input2: , output:  }, #15
  # { input1: , input2: , output:  }, #16
  # { input1: , input2: , output:  }, #17
  # { input1: , input2: , output:  }, #18
  # { input1: , input2: , output:  }, #19
  # { input1: , input2: , output:  }  #20
].freeze

describe 'solution' do
  # it 'passes the supplied tests with 1 input and 1 output' do
  #   TEST_I_O.each_with_index do |element, index|
  #     expect(solution(element[:input])).to eq(element[:output]), <<~HEREDOC
  #       "Failed test #{index + 1}. Expected #{element[:input]} to equal #{element[:output]}."
  #     HEREDOC
  #   end
  # end

  it 'passes the supplied tests with 2 inputs and 1 output' do
    TEST_I_O.each_with_index do |element, index|
      expect(solution(element[:input1], element[:input2])).to eq(element[:output]), <<~HEREDOC
        "Failed test #{index + 1}."
      HEREDOC
    end
  end
end
