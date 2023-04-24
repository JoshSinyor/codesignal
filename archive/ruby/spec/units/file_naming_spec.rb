# frozen_string_literal: true

require 'file_naming'

FILE_NAMING_TEST_I_O = [
  { test: 1, input: ['doc',
                     'doc',
                     'image',
                     'doc(1)',
                     'doc'], output: ['doc',
                                      'doc(1)',
                                      'image',
                                      'doc(1)(1)',
                                      'doc(2)'] }, # 01
  { test: 2, input: ['a(1)',
                     'a(6)',
                     'a',
                     'a',
                     'a',
                     'a',
                     'a',
                     'a',
                     'a',
                     'a',
                     'a',
                     'a'], output: ['a(1)',
                                    'a(6)',
                                    'a',
                                    'a(2)',
                                    'a(3)',
                                    'a(4)',
                                    'a(5)',
                                    'a(7)',
                                    'a(8)',
                                    'a(9)',
                                    'a(10)',
                                    'a(11)'] }, # 02
  { test: 3, input: ['dd',
                     'dd(1)',
                     'dd(2)',
                     'dd',
                     'dd(1)',
                     'dd(1)(2)',
                     'dd(1)(1)',
                     'dd',
                     'dd(1)'], output: ['dd',
                                        'dd(1)',
                                        'dd(2)',
                                        'dd(3)',
                                        'dd(1)(1)',
                                        'dd(1)(2)',
                                        'dd(1)(1)(1)',
                                        'dd(4)',
                                        'dd(1)(3)'] }, # 03
  { test: 4, input: ['a',
                     'b',
                     'cd',
                     'b ',
                     'a(3)'], output: ['a',
                                       'b',
                                       'cd',
                                       'b ',
                                       'a(3)'] }, # 04
  { test: 5, input: ['name',
                     'name',
                     'name(1)',
                     'name(3)',
                     'name(2)',
                     'name(2)'], output: ['name',
                                          'name(1)',
                                          'name(1)(1)',
                                          'name(3)',
                                          'name(2)',
                                          'name(2)(1)'] }, # 05
  { test: 6, input: [], output: [] } # 06
].freeze

describe 'file_naming' do
  it 'passes the supplied tests with 1 input and 1 output' do
    FILE_NAMING_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(file_naming(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
