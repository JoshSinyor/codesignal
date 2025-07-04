![Ruby Version](https://img.shields.io/badge/ruby-3.3.7-red?logo=ruby)
![License](https://img.shields.io/github/license/JoshSinyor/codesignal)
![Code Size](https://img.shields.io/github/languages/code-size/JoshSinyor/codesignal)
![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen?&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMiAzMiI+PGRlZnMvPjxwYXRoIGQ9Ik0yNyAxNHYtMWEyIDIgMCAwMC0yLTJIN2EyIDIgMCAwMC0yIDJ2MWEyIDIgMCAwMC0xIDF2MmExIDEgMCAwMDEgMnYxYTIgMiAwIDAwMiAxaDE4YTIgMiAwIDAwMi0xdi0xYTIgMiAwIDAwMS0ydi0yYTIgMiAwIDAwLTEtMXpNMTYgMmExMCAxMCAwIDAwLTEwIDloMjBhMTAgMTAgMCAwMC0xMC05ek0xMyAyNGg2djFsMS0xLTEtMWgtN3YybDEtMXoiLz48cGF0aCBmaWxsPSIjZWMxYzI0IiBkPSJNMjQgMThIOGExIDEgMCAxMTAtM2gxNmExIDEgMCAwMTEgMSAxIDEgMCAwMS0xIDJ6Ii8+PHBhdGggZD0iTTIzIDIydjRhMiAyIDAgMDEtMiAyaC0xYTEgMSAwIDAxMC0xbC0yLTFhMSAxIDAgMDAwLTFoLTRhMSAxIDAgMDAwIDFsLTIgMWExIDEgMCAwMTAgMWgtMWEyIDIgMCAwMS0yLTJ2LTRIN3Y0YTQgNCAwIDAwNCA0aDEwYTQgNCAwIDAwNC00di00eiIvPjwvc3ZnPg==)
![Ruby Deployment CI Badge](https://github.com/JoshSinyor/codesignal/actions/workflows/rspec_tests.yml/badge.svg?branch=main)
![Python Deployment CI Badge](https://github.com/JoshSinyor/codesignal/actions/workflows/python_tests.yml/badge.svg?branch=main)

# Codesignal

A repository for offline testing of online tests.

---

- [Installation](#installation)
- [Arcade Mode](#arcade-mode)
- [Dependencies](#dependencies)
- [Author(s)](#authors)
- [License(s)](#licenses)
- [Acknowledgements](#acknowledgements)

---

## Installation

This project requires Ruby 3.3.7. If you do not have Ruby 3.3.7, install it using [these instructions](https://www.ruby-lang.org/en/documentation/installation/).

This project requires Python 3.11. If you do not have Python 3.11, install it using [these instructions](https://wiki.python.org/moin/BeginnersGuide/Download).

1. [Clone](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository) or [fork](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo) this repository.
2. Install the necessary Gems from the `Gemfile` by executing `bundle install`.

---

## Arcade Mode

### Intro

  1. <details>
        <summary>The Journey Begins</summary>

        |                 | Ruby                                          | Python |
        |-----------------|-----------------------------------------------| ------ |
        | add             | [Ruby](archive/ruby/lib/add.rb)               |        |
        | centuryFromYear | [Ruby](archive/ruby/lib/century_from_year.rb) |        |
        | checkPalindrome | [Ruby](archive/ruby/lib/check_palindrome.rb)  |        |

  2. <details>
        <summary>Edge of the Ocean</summary>

        |                          | Ruby                                                   |
        |--------------------------|--------------------------------------------------------|
        | adjacentElementsProduct  | [Ruby](archive/ruby/lib/adjacent_elements_product.rb)  |
        | shapeArea                | [Ruby](archive/ruby/lib/shape_area.rb)                 |
        | Make Array Consecutive 2 | [Ruby](archive/ruby/lib/make_array_consecutive_two.rb) |
        | almostIncreasingSequence | [Ruby](archive/ruby/lib/almost_increasing_sequence.rb) |
        | matrixElementsSum        | [Ruby](archive/ruby/lib/matrix_element_sum.rb)         |

  3. <details>
        <summary>Smooth Sailing</summary>

        |                      | Ruby                                               |
        |----------------------|----------------------------------------------------|
        | All Longest Strings  | [Ruby](archive/ruby/lib/all_longest_strings.rb)    |
        | commonCharacterCount | [Ruby](archive/ruby/lib/common_character_count.rb) |
        | isLucky              | [Ruby](archive/ruby/lib/is_lucky.rb)               |
        | Sort by Height       | [Ruby](archive/ruby/lib/sort_by_height.rb)         |
        | reverseInParentheses | [Ruby](archive/ruby/lib/reverse_in_parentheses.rb) |

  4. <details>
        <summary>Exploring the Waters</summary>

        |                       | Ruby                                               |
        |-----------------------|----------------------------------------------------|
        | alternatingSums       | [Ruby](archive/ruby/lib/alternating_sums.rb)       |
        | Add Border            | [Ruby](archive/ruby/lib/add_border.rb)             |
        | Are Similar?          | [Ruby](archive/ruby/lib/are_similar.rb)            |
        | arrayChange           | [Ruby](archive/ruby/lib/array_change.rb)           |
        | palindromeRearranging | [Ruby](archive/ruby/lib/palindrome_rearranging.rb) |

  5. <details>
        <summary>Island of Knowledge</summary>

        |                                | Ruby                                                          |
        |--------------------------------|---------------------------------------------------------------|
        | areEquallyStrong               | [Ruby](archive/ruby/lib/are_equally_strong.rb)                |
        | arrayMaximalAdjacentDifference | [Ruby](archive/ruby/lib/array_maximal_adjacent_difference.rb) |
        | isIPv4Address                  | [Ruby](archive/ruby/lib/is_ipv4_address.rb)                   |
        | avoidObstacles                 | [Ruby](archive/ruby/lib/avoid_obstacles.rb)                   |
        | Box Blur                       | [Ruby](archive/ruby/lib/box_blur.rb)                          |
        | Minesweeper                    | [Ruby](archive/ruby/lib/minesweeper.rb)                       |

  6. <details>
        <summary>Rains of Reason</summary>

        |                     | Ruby                                              |
        |---------------------|---------------------------------------------------|
        | Array Replace       | [Ruby](archive/ruby/lib/array_replace.rb)         |
        | evenDigitsOnly      | [Ruby](archive/ruby/lib/even_digits_only.rb)      |
        | variableName        | [Ruby](archive/ruby/lib/variable_name.rb)         |
        | alphabeticShift     | [Ruby](archive/ruby/lib/alphabetic_shift.rb)      |
        | chessBoardCellColor | [Ruby](archive/ruby/lib/chessboard_cell_color.rb) |

  7. <details>
        <summary>Through the Fog</summary>

        |                               | Ruby                                                            |
        |-------------------------------|-----------------------------------------------------------------|
        | Circle of Numbers             | [Ruby](archive/ruby/lib/circle_of_numbers.rb)                   |
        | depositProfit                 | [Ruby](archive/ruby/lib/deposit_profit.rb)                      |
        | absoluteValuesSumMinimization | [Ruby](archive/ruby/lib/absolute_values_string_minimization.rb) |
        | stringsRearrangement          | [Ruby](archive/ruby/lib/strings_rearrangement.rb)               |

  8. <details>
        <summary>Diving Deeper</summary>

        |                        | Ruby                                                  |
        |------------------------|-------------------------------------------------------|
        | extractEachKth         | [Ruby](archive/ruby/lib/extract_each_kth.rb)          |
        | firstDigit             | [Ruby](archive/ruby/lib/first_digit.rb)               |
        | differentSymbolsNaive  | [Ruby](archive/ruby/lib/different_symbols_naive.rb)   |
        | arrayMaxConsecutiveSum | [Ruby](archive/ruby/lib/array_max_consecutive_sum.rb) |

  9. <details>
        <summary>Dark Wilderness</summary>

        |                     | Ruby                                              |
        |---------------------|---------------------------------------------------|
        | growingPlant        | [Ruby](archive/ruby/lib/growing_plant.rb)         |
        | KnapsackLight       | [Ruby](archive/ruby/lib/knapsack_light.rb)        |
        | longestDigitsPrefix | [Ruby](archive/ruby/lib/longest_digits_prefix.rb) |
        | digitDegree         | [Ruby](archive/ruby/lib/digit_degree.rb)          |
        | Bishop and Pawn     | [Ruby](archive/ruby/lib/bishop_and_pawn.rb)       |

  10. <details>
        <summary>Eruption of Light</summary>

        |                   | Ruby                                            |
        |-------------------|-------------------------------------------------|
        | isBeautifulString | [Ruby](archive/ruby/lib/is_beautiful_string.rb) |
        | Find Email Domain | [Ruby](archive/ruby/lib/find_email_domain.rb)   |
        | buildPalindrome   | [Ruby](archive/ruby/lib/build_palindrome.rb)    |
        | Elections Winners | [Ruby](archive/ruby/lib/elections_winners.rb)    |
        | Is MAC48 Address? | [Ruby](archive/ruby/lib/is_mac48_address.rb)    |

  11. <details>
        <summary>Rainbow of Clarity</summary>

        |              | Ruby                                      |
        |--------------|-------------------------------------------|
        | isDigit      | [Ruby](archive/ruby/lib/is_digit.rb)      |
        | lineEncoding | [Ruby](archive/ruby/lib/line_encoding.rb) |
        | chessKnight  | [Ruby](archive/ruby/lib/chess_knight.rb)  |
        | deleteDigit  | [Ruby](archive/ruby/lib/delete_digit.rb)  |

  12. <details>
        <summary>Land of Logic</summary>

        |                       | Ruby                                                 |
        |-----------------------|------------------------------------------------------|
        | longestWord           | [Ruby](archive/ruby/lib/longest_word.rb)             |
        | Valid Time            | [Ruby](archive/ruby/lib/valid_time.rb)               |
        | sumUpNumbers          | [Ruby](archive/ruby/lib/sum_up_numbers.rb)           |
        | Different Squares     | [Ruby](archive/ruby/lib/different_squares.rb)        |
        | digitsProduct         | [Ruby](archive/ruby/lib/digits_product.rb)           |
        | File Naming           | [Ruby](archive/ruby/lib/file_naming.rb)              |
        | messageFromBinaryCode | [Ruby](archive/ruby/lib/message_from_binary_code.rb) |
        | spiralNumbers         | [Ruby](archive/ruby/lib/spiral_numbers.rb)           |
        | Sudoku                | [Ruby](archive/ruby/lib/sudoku.rb)                   |

---

## Dependencies

This program's dependencies are minimal and relate solely to testing. All Ruby dependencies are explicitly invoked in the `Gemfile`.

- [Ruby](https://www.ruby-lang.org/), courtesy of [Yukihiro Matsumoto](https://github.com/matz).
- [RSpec](https://rspec.info/), courtesy of [Jon Rowe](https://github.com/JonRowe), [Benoit Tigeot](https://github.com/benoittgt), [Phil Pirozhkov](https://github.com/pirj), [Xavier Shay](https://github.com/xaviershay) and [Yuji Nakayama](https://github.com/yujinakayama).
- [Rubocop](https://rubocop.org/) and [Rubocop-RSpec](https://github.com/rubocop/rubocop-rspec), both courtesy of [Bozhidar Batsov](https://github.com/bbatsov).
- [SimpleCov](https://github.com/simplecov-ruby/simplecov), courtesy of [Christoph Olszowka](https://github.com/colszowka).
- [SimpleCov-Console](https://github.com/chetan/simplecov-console), courtesy of [Chetan Sarva](https://github.com/chetan).
- [Python](https://www.python.org/), courtesy of [Guido van Rossum](https://github.com/gvanrossum).

---

## Author(s)

Authored by [Joshua Sinyor](https://gist.github.com/JoshSinyor).

---

## License(s)

This project is licensed under the [MIT License](LICENSE).

---

## Acknowledgements

* Table of contents generated with [markdown-toc](https://ecotrust-canada.github.io/markdown-toc/).
* Markdown tables generated with [TablesGenerator](https://www.tablesgenerator.com/markdown_tables).
