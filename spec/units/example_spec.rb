# frozen_string_literal: true

require 'example'

TEST_INPUTS = [[6, 2, 3, 8],
               [0, 3],
               [5, 4, 6],
               [6, 3],
               [1]
]

TEST_OUTPUTS = [3,
                2,
                0,
                2,
                0
]

describe 'example_method' do
  it 'passes the first test' do
    expect(example_method(TEST_INPUTS[0])).to eq TEST_OUTPUTS[0]
  end

  it 'passes the second test' do
    expect(example_method(TEST_INPUTS[1])).to eq TEST_OUTPUTS[1]
  end

  it 'passes the third test' do
    expect(example_method(TEST_INPUTS[2])).to eq TEST_OUTPUTS[2]
  end

  it 'passes the fourth test' do
    expect(example_method(TEST_INPUTS[3])).to eq TEST_OUTPUTS[3]
  end

  it 'passes the fifth test' do
    expect(example_method(TEST_INPUTS[4])).to eq TEST_OUTPUTS[4]
  end

  # it 'passes the sixth test' do
  #   expect(example_method(TEST_INPUTS[5])).to eq TEST_OUTPUTS[5]
  # end

  # it 'passes the seventh test' do
  #   expect(example_method(TEST_INPUTS[6])).to eq TEST_OUTPUTS[6]
  # end

  # it 'passes the eighth test' do
  #   expect(example_method(TEST_INPUTS[7])).to eq TEST_OUTPUTS[7]
  # end

  # it 'passes the ninth test' do
  #   expect(example_method(TEST_INPUTS[8])).to eq TEST_OUTPUTS[8]
  # end

  # it 'passes the tenth test' do
  #   expect(example_method(TEST_INPUTS[9])).to eq TEST_OUTPUTS[9]
  # end

  # it 'passes the eleventh test' do
  #   expect(example_method(TEST_INPUTS[10])).to eq TEST_OUTPUTS[10]
  # end

  # it 'passes the twelfth test' do
  #   expect(example_method(TEST_INPUTS[11])).to eq TEST_OUTPUTS[11]
  # end

  # it 'passes the thirteenth test' do
  #   expect(example_method(TEST_INPUTS[12])).to eq TEST_OUTPUTS[12]
  # end

  # it 'passes the fourteenth test' do
  #   expect(example_method(TEST_INPUTS[13])).to eq TEST_OUTPUTS[13]
  # end

  # it 'passes the fifteenth test' do
  #   expect(example_method(TEST_INPUTS[14])).to eq TEST_OUTPUTS[14]
  # end

  # it 'passes the sixteenth test' do
  #   expect(example_method(TEST_INPUTS[15])).to eq TEST_OUTPUTS[15]
  # end

  # it 'passes the seventeenth test' do
  #   expect(example_method(TEST_INPUTS[16])).to eq TEST_OUTPUTS[16]
  # end

  # it 'passes the eighteenth test' do
  #   expect(example_method(TEST_INPUTS[17])).to eq TEST_OUTPUTS[17]
  # end

  # it 'passes the nineteenth test' do
  #   expect(example_method(TEST_INPUTS[18])).to eq TEST_OUTPUTS[18]
  # end

  # it 'passes the twentieth test' do
  #   expect(example_method(TEST_INPUTS[19])).to eq TEST_OUTPUTS[19]
  # end
end
