# frozen_string_literal: true

require 'array_change'

ARRAY_CHANGE_TEST_I_O = [
  { test: 1, input: [1, 1, 1], output: 3 }, # 01
  { test: 2, input: [-1000, 0, -2, 0], output: 5 }, # 02
  { test: 3, input: [2, 1, 10, 1], output: 12 }, # 03
  { test: 4, input: [2, 3, 3, 5, 5, 5, 4, 12, 12, 10, 15], output: 13 }, # 04
  { test: 5, input: [3122, -645, 2616, 13_213, -8069], output: 25_559 }, # 05
  { test: 6, input: [-787,
                     -773,
                     -93,
                     867,
                     -28,
                     118,
                     372,
                     255,
                     355,
                     598,
                     -179,
                     -752,
                     794,
                     961,
                     -84,
                     296,
                     -714,
                     14,
                     666,
                     -265,
                     -905,
                     942,
                     -691,
                     -379,
                     -698,
                     -650,
                     637,
                     523,
                     709,
                     -674,
                     574,
                     -239,
                     805,
                     -434,
                     597,
                     -677,
                     664,
                     384,
                     726,
                     -389,
                     -387,
                     772,
                     -603,
                     685,
                     249,
                     446,
                     -631,
                     454,
                     983,
                     867,
                     -158,
                     932,
                     -440,
                     891,
                     -12,
                     400,
                     -916,
                     503,
                     185,
                     -802,
                     -255,
                     207,
                     -952,
                     -506,
                     -689,
                     425,
                     747,
                     -907,
                     -30,
                     102,
                     553,
                     981,
                     -664,
                     75,
                     -957,
                     -42,
                     99,
                     -750,
                     -277,
                     686,
                     -884,
                     -972,
                     470,
                     32,
                     439,
                     163,
                     887,
                     895,
                     -555,
                     -654,
                     793,
                     333,
                     143,
                     73,
                     181,
                     -512,
                     -915,
                     -68,
                     542,
                     799], output: 89_510 }, # 06
  { test: 7, input: [-28_943,
                     -29_728,
                     -24_726,
                     -15_090,
                     -2555,
                     -9551,
                     -11_025,
                     36_442,
                     -23_240,
                     -46_093,
                     48_516,
                     44_580,
                     -21_573,
                     39_172,
                     -38_017,
                     -19_354,
                     -13_460,
                     38_212,
                     -35_646,
                     -22_288,
                     36_832,
                     -33_115,
                     39_055,
                     -15_935,
                     -19_300,
                     -10_419,
                     -18_548,
                     21_742,
                     -32_032,
                     27_988,
                     -45_323,
                     27_454,
                     -5683,
                     -14_209,
                     -4168,
                     51_188,
                     45_552,
                     9899,
                     49_241,
                     -25_939,
                     -8344,
                     -25_788,
                     6808,
                     6931,
                     6145,
                     -30_802,
                     -518,
                     -42_362], output: 2_020_705 }, # 07
  { test: 8, input: [9796,
                     1283,
                     -2825,
                     3870,
                     -6727,
                     -8616,
                     -10_191,
                     -7727,
                     7074,
                     1580,
                     -4583,
                     162,
                     2980,
                     -3861,
                     9452,
                     8145,
                     1222,
                     -1125,
                     5142,
                     -5657,
                     -974,
                     -986,
                     -9627,
                     5244,
                     8866,
                     3336,
                     -9946,
                     -5271,
                     10_582,
                     3013,
                     8030,
                     4471,
                     -3420,
                     9496,
                     -3533,
                     -8030,
                     10_007,
                     2549,
                     -8195,
                     7119,
                     302,
                     -5322,
                     -3537,
                     209,
                     -8134,
                     -9176,
                     6336,
                     -1771,
                     9851,
                     3644,
                     9629,
                     -2603,
                     3988,
                     10_579,
                     2221,
                     1101,
                     1465,
                     5002,
                     -6203,
                     -8864,
                     596,
                     6005,
                     4554,
                     8526,
                     2178,
                     -5447,
                     -232,
                     -9734,
                     7402,
                     -3984,
                     -7161,
                     -2139,
                     -3181,
                     10_445,
                     4535,
                     6926,
                     7156], output: 737_073 }, # 08
  { test: 9, input: [-24_875,
                     -6401,
                     58_256,
                     44_456,
                     2244,
                     -25_333,
                     -42_389,
                     -5975,
                     7650,
                     -46_343,
                     -62_011,
                     -55_366,
                     7802,
                     -37_699,
                     15_461,
                     13_309,
                     -58_664,
                     54_557,
                     56_324,
                     -34_397,
                     -33_024,
                     -21_934,
                     -18_861,
                     -23_196,
                     56_542,
                     -63_986,
                     59_833,
                     -45_610,
                     -16_948,
                     399,
                     -7405,
                     54_701,
                     -57_348,
                     -32_627,
                     65_534,
                     615], output: 2_199_614 } # 09
].freeze

describe 'array_change' do
  it 'passes the supplied tests with 1 input and 1 output' do
    ARRAY_CHANGE_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(array_change(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
