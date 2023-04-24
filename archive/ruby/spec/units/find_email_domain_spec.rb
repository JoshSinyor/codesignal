# frozen_string_literal: true

require 'find_email_domain'

FIND_EMAIL_DOMAIN_TEST_I_O = [
  { test: 1, input: 'prettyandsimple@example.com', output: 'example.com' }, # 01
  { test: 2, input: 'fully-qualified-domain@codesignal.com', output: 'codesignal.com' }, # 02
  { test: 3, input: '" "@space.com', output: 'space.com' }, # 03
  { test: 4, input: 'someaddress@yandex.ru', output: 'yandex.ru' }, # 04
  { test: 5, input: '" "@xample.org', output: 'xample.org' }, # 05
  { test: 6, input: '"much.more unusual"@yahoo.com', output: 'yahoo.com' }, # 06
  { test: 7, input: '"very.unusual.@.unusual.com"@usual.com', output: 'usual.com' }, # 07
  { test: 8, input: 'admin@mailserver2.ru', output: 'mailserver2.ru' }, # 08
  { test: 9, input: 'example-indeed@strange-example.com', output: 'strange-example.com' }, # 09
  { test: 10, input: 'very.common@gmail.com', output: 'gmail.com' } # 10
].freeze

describe 'find_email_domain' do
  it 'passes the supplied tests with 1 input and 1 output' do
    FIND_EMAIL_DOMAIN_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(find_email_domain(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
