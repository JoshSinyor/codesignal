# frozen_string_literal: true

# frozen_string_literal:

require 'solution'

TEST_I_O = [
  { input: %w[aba aa ad vcd aba], output: %w[aba vcd aba] } # 01
  # { input: , output:  }, #02
  # { input: , output:  }, #03
  # { input: , output:  }, #04
  # { input: , output:  }, #05
  # { input: , output:  }, #06
  # { input: , output:  }, #07
  # { input: , output:  }, #08
  # { input: , output:  }, #09
  # { input: , output:  }, #10
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
