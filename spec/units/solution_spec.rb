# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input: %w[aba bbb bab], output: false }, # 01
  { test: 2, input: %w[ab bb aa], output: true }, # 02
  { test: 3, input: %w[q q], output: false }, # 03
  { test: 4, input: %w[zzzzab zzzzbb zzzzaa], output: true }, # 04
  { test: 5, input: %w[ab ad ef eg], output: false }, # 05
  { test: 6, input: %w[abc bef bcc bec bbc bdc], output: true }, # 06
  { test: 7, input: %w[abc abx axx abc], output: false }, # 07
  { test: 8, input: %w[abc abx axx abx abc], output: true }, # 08
  { test: 9, input: %w[f g a h], output: true }, # 09
  { test: 10, input: %w[ff gf af ar hf], output: true }, # 10
  { test: 11, input: %w[a b c], output: true } # 11
].freeze

describe 'solution' do
  it 'passes the supplied tests with 1 input and 1 output' do
    TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(solution(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
