# frozen_string_literal: true

# frozen_string_literal:

require 'solution'

TEST_I_O = [
  { input: [[0, 1, 1, 2], [0, 5, 0, 0], [2, 0, 3, 3]], output: 9 }, # 01
  { input: [[1, 1, 1, 0], [0, 5, 0, 1], [2, 1, 3, 10]], output: 9 }, # 02
  { input: [[1, 1, 1], [2, 2, 2], [3, 3, 3]], output: 18 }, # 03
  { input: [[0]], output: 0 }, # 04
  { input: [[1, 0, 3], [0, 2, 1], [1, 2, 0]], output: 5 }, # 05
  { input: [[1], [5], [0], [2]], output: 6 }, # 06
  { input: [[1, 2, 3, 4, 5]], output: 15 }, # 07
  { input: [[2], [5], [10]], output: 17 }, # 08
  { input: [[4, 0, 1], [10, 7, 0], [0, 0, 0], [9, 1, 2]], output: 15 }, # 09
  { input: [[1]], output: 1 } # 10
  # { input: , output:  }, #11
  # { input: , output:  }, #12
  # { input: , output:  }, #13
  # { input: , output:  }, #14
  # { input: , output:  }, #15
  # { input: , output:  }, #16
  # { input: , output:  }, #17
  # { input: , output:  }, #18
  # { input: , output:  }, #19
  # { input: , output:  }  #20
].freeze

describe 'solution' do
  it 'passes the supplied tests' do
    TEST_I_O.each_with_index do |element, index|
      expect(solution(element[:input])).to eq(element[:output]), <<~HEREDOC
        "Failed test #{index + 1}. Expected #{element[:input]} to equal #{element[:output]}."
      HEREDOC
    end
  end
end
