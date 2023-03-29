![Ruby Version](https://img.shields.io/badge/ruby-3.0-red?logo=ruby)
![License](https://img.shields.io/github/license/JoshSinyor/codesignal)
![Code Size](https://img.shields.io/github/languages/code-size/JoshSinyor/codesignal)
![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen?&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMiAzMiI+PGRlZnMvPjxwYXRoIGQ9Ik0yNyAxNHYtMWEyIDIgMCAwMC0yLTJIN2EyIDIgMCAwMC0yIDJ2MWEyIDIgMCAwMC0xIDF2MmExIDEgMCAwMDEgMnYxYTIgMiAwIDAwMiAxaDE4YTIgMiAwIDAwMi0xdi0xYTIgMiAwIDAwMS0ydi0yYTIgMiAwIDAwLTEtMXpNMTYgMmExMCAxMCAwIDAwLTEwIDloMjBhMTAgMTAgMCAwMC0xMC05ek0xMyAyNGg2djFsMS0xLTEtMWgtN3YybDEtMXoiLz48cGF0aCBmaWxsPSIjZWMxYzI0IiBkPSJNMjQgMThIOGExIDEgMCAxMTAtM2gxNmExIDEgMCAwMTEgMSAxIDEgMCAwMS0xIDJ6Ii8+PHBhdGggZD0iTTIzIDIydjRhMiAyIDAgMDEtMiAyaC0xYTEgMSAwIDAxMC0xbC0yLTFhMSAxIDAgMDAwLTFoLTRhMSAxIDAgMDAwIDFsLTIgMWExIDEgMCAwMTAgMWgtMWEyIDIgMCAwMS0yLTJ2LTRIN3Y0YTQgNCAwIDAwNCA0aDEwYTQgNCAwIDAwNC00di00eiIvPjwvc3ZnPg==)
![Deployment CI Badge](https://github.com/JoshSinyor/codesignal/actions/workflows/rspec_tests.yml/badge.svg?branch=main)

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

This project requires Ruby 3.0.0. If you do not have Ruby 3.0.0, install it using [these instructions](https://www.ruby-lang.org/en/documentation/installation/).

1. [Clone](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository) or [fork](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo) this repository.
2. Install the necessary Gems from the `Gemfile` by executing `bundle install`.

---

## Arcade Mode

### Intro

  1. <details>
        <summary>The Journey Begins</summary>

        |                 | Ruby |
        |-----------------|------|
        | add             | N/A  |
        | centuryFromYear | N/A  |
        | checkPalindrome | N/A  |

  2. <details>
        <summary>Edge of the Ocean</summary>

        |                          | Ruby                                                                                              |
        |--------------------------|---------------------------------------------------------------------------------------------------|
        | adjacentElementsProduct  | [8d0362d](https://github.com/JoshSinyor/codesignal/tree/8d0362d2d44851a9256c95a19657116b0de9cde6) |
        | shapeArea                | [5321a3e](https://github.com/JoshSinyor/codesignal/tree/5321a3ecd2ab85dc266d7a17ad483b2679ab615b) |
        | Make Array Consecutive 2 | [b86efa3](https://github.com/JoshSinyor/codesignal/tree/b86efa31446bf37537cd763b3d11aee5a502103e) |
        | almostIncreasingSequence | [1a2d32f](https://github.com/JoshSinyor/codesignal/tree/1a2d32f095dd1e42322f5bc67e3a4c6cd6d559e0) |
        | matrixElementsSum        | [71b164e](https://github.com/JoshSinyor/codesignal/tree/71b164e0076cd94284f173dc73f685f1c80e22a7) |

  3. <details>
        <summary>Smooth Sailing</summary>

        |                      | Ruby                                                                                              |
        |----------------------|---------------------------------------------------------------------------------------------------|
        | All Longest Strings  | [6863b26](https://github.com/JoshSinyor/codesignal/tree/6863b2655dc1a59e65d4df7a41416ea93b940e35) |
        | commonCharacterCount | [7d29eeb](https://github.com/JoshSinyor/codesignal/tree/7d29eeb4005a9359156fb7ca08486e99f461d2d5) |
        | isLucky              | [41c4fb4](https://github.com/JoshSinyor/codesignal/tree/41c4fb484a52b34244aa7739f18f7ec11e3a6b79) |
        | Sort by Height       | [4cce7fb](https://github.com/JoshSinyor/codesignal/tree/4cce7fb38a7ca172f5d3f279657b7a3430aeb4b1) |
        | reverseInParentheses | [c37025c](https://github.com/JoshSinyor/codesignal/tree/c37025c66413669ee2021a539778204897f93ea1) |

  4. <details>
        <summary>Exploring the Waters</summary>

        |                       | Ruby                                                                                              |
        |-----------------------|---------------------------------------------------------------------------------------------------|
        | alternatingSums       | [3ad7b8a](https://github.com/JoshSinyor/codesignal/tree/3ad7b8a4bb51a0f7f78f5fbc1fb4ba68b36ad11c) |
        | Add Border            | [f8a8ca6](https://github.com/JoshSinyor/codesignal/tree/f8a8ca6a3a55b3677b697c2f7af8527550554ed3) |
        | Are Similar?          | [6d610a8](https://github.com/JoshSinyor/codesignal/tree/6d610a8c8c4bdb767d807c5e15c5adfcfb08214d) |
        | arrayChange           | [7def989](https://github.com/JoshSinyor/codesignal/tree/7def989a0ed6d15321dc2a1d5e704755f9c4690b) |
        | palindromeRearranging | [d96db14](https://github.com/JoshSinyor/codesignal/tree/d96db14c8b6fbb19180cb1a66b25fb5e36aed81c) |


  5. <details>
        <summary>Island of Knowledge</summary>

        |                                | Ruby                                                                                              |
        |--------------------------------|---------------------------------------------------------------------------------------------------|
        | areEquallyStrong               | [c3f2ecf](https://github.com/JoshSinyor/codesignal/tree/c3f2ecf9b3404a37aaf7caf8519490590a4e90df) |
        | arrayMaximalAdjacentDifference | [6af1342](https://github.com/JoshSinyor/codesignal/tree/6af13425df91cb9ed0e8c758302f38ea248e7743) |
        | isIPv4Address                  | [4558e9a](https://github.com/JoshSinyor/codesignal/tree/4558e9a501e7d88815bde602e6f0a628645046fc) |
        | avoidObstacles                 | [a4fca1d](https://github.com/JoshSinyor/codesignal/tree/a4fca1d66c45e3f7fb6d36b61841fcb3cda20020) |
        | Box Blur                       | [5f07e35](https://github.com/JoshSinyor/codesignal/tree/5f07e3546ea3f97f140be2a261fee758872ff193) |
        | Minesweeper                    | [3fee80e](https://github.com/JoshSinyor/codesignal/tree/3fee80e81c8fd22e94f734337085fd6b91f398bb) |

  6. <details>
        <summary>Rains of Reason</summary>

        |                     | Ruby                                                                                              |
        |---------------------|---------------------------------------------------------------------------------------------------|
        | Array Replace       | [b7f084f](https://github.com/JoshSinyor/codesignal/tree/b7f084fa28ab9c62ed2d1e4c7007cf9468500f34) |
        | evenDigitsOnly      | [e181973](https://github.com/JoshSinyor/codesignal/tree/e1819733cb7e04b17bbff8d589cad717720d847d) |
        | variableName        | [80a0762](https://github.com/JoshSinyor/codesignal/tree/80a076208bda24eb399e752e4a96b4116915197f) |
        | alphabeticShift     | [cbb3dbd](https://github.com/JoshSinyor/codesignal/tree/cbb3dbd2b26873bb3f884ce3e661ea41703953ac) |
        | chessBoardCellColor | [9ef4edf](https://github.com/JoshSinyor/codesignal/tree/9ef4edf1be55b51cd2359ea6589c0d1869d54ee5) |

  7. <details>
        <summary>Through the Fog</summary>

        |                               | Ruby                                                                                              |
        |-------------------------------|---------------------------------------------------------------------------------------------------|
        | Circle of Numbers             | [64c8d40](https://github.com/JoshSinyor/codesignal/tree/64c8d40bb5867d52cd14ae938c032cfb294b95ab) |
        | depositProfit                 | [773fe6e](https://github.com/JoshSinyor/codesignal/tree/773fe6edd4888c4f6fb0b6919b157d80184648a7) |
        | absoluteValuesSumMinimization | [90baec5](https://github.com/JoshSinyor/codesignal/tree/90baec5c0c0c51a0b9e04707d336b166ea9e3be5) |
        | stringsRearrangement          | [d50bdf5](https://github.com/JoshSinyor/codesignal/tree/d50bdf56567b6bf5dc771773ba92e33c05c444bf) |

  8. <details>
        <summary>Diving Deeper</summary>

        |                        | Ruby                                                                                              |
        |------------------------|---------------------------------------------------------------------------------------------------|
        | extractEachKth         | [8fbc362](https://github.com/JoshSinyor/codesignal/tree/8fbc3629355f262c96c970737641c9011fab1ff8) |
        | firstDigit             | [f68dc81](https://github.com/JoshSinyor/codesignal/tree/f68dc8182194473f644a5aff05883a167f71518f) |
        | differentSymbolsNaive  | [ad5f557](https://github.com/JoshSinyor/codesignal/tree/ad5f5570c6897923e167b57a3501b6fe2ae8854b) |
        | arrayMaxConsecutiveSum | [ade28b2](https://github.com/JoshSinyor/codesignal/tree/ade28b2d243f261f0e0648cc68a2b1dfdd36f92c) |

  9. <details>
        <summary>Dark Wilderness</summary>

        |                     | Ruby                                                                                              |
        |---------------------|---------------------------------------------------------------------------------------------------|
        | growingPlant        | [76fca5f](https://github.com/JoshSinyor/codesignal/tree/76fca5f458c686192f59a7e771bb36d09e9d4f25) |
        | KnapsackLight       | [36431be](https://github.com/JoshSinyor/codesignal/tree/36431beb4176a3c69fc2daf5f2c856942d086eb4) |
        | longestDigitsPrefix | [753a38c](https://github.com/JoshSinyor/codesignal/tree/753a38cbfdbc515d03e2339844ba0323294ece9c) |
        | digitDegree         | [d314bbb](https://github.com/JoshSinyor/codesignal/tree/d314bbb20fb593c502fa2a1ab4a3f313492e9d99) |
        | Bishop and Pawn     | [d15d4d0](https://github.com/JoshSinyor/codesignal/tree/d15d4d0b7d9e887b7ae24f645e6e5a85fa9eb249) |

  10. <details>
        <summary>Eruption of Light</summary>

        |                   | Ruby                                                                                              |
        |-------------------|---------------------------------------------------------------------------------------------------|
        | isBeautifulString | [85bc028](https://github.com/JoshSinyor/codesignal/tree/85bc0288f3c86f412c9961b30bfe60b05435c0c6) |
        | Find Email Domain | [4f208d7](https://github.com/JoshSinyor/codesignal/tree/4f208d773512622dbce8fe82f6fca1e0481b2936) |
        | buildPalindrome   | [15ac92c](https://github.com/JoshSinyor/codesignal/tree/15ac92cb3c39cf49edbeb07e9a4b5cee06c35b0d) |
        | Elections Winners | [6d5a936](https://github.com/JoshSinyor/codesignal/tree/6d5a936d58af12f6eaab874eeb6e42ced82a3680) |
        | Is MAC48 Address? | [0d008e5](https://github.com/JoshSinyor/codesignal/tree/0d008e5b6a9dd45aa7fb18ce371c71e6f88ccc61) |

  11. <details>
        <summary>Rainbow of Clarity</summary>

        |              | Ruby                                                                                              |
        |--------------|---------------------------------------------------------------------------------------------------|
        | isDigit      | [1acd944](https://github.com/JoshSinyor/codesignal/tree/1acd944ff0b49b6730960ae09648ef71295eb76a) |
        | lineEncoding | [2dbd8e9](https://github.com/JoshSinyor/codesignal/tree/2dbd8e94463189cde4573186aa749c59e4ea0812) |
        | chessKnight  | [07e5008](https://github.com/JoshSinyor/codesignal/tree/07e5008c2de272a4db6163c963ed6010e1620c13) |
        | deleteDigit  | [d279c8c](https://github.com/JoshSinyor/codesignal/tree/d279c8c24df28703df2be964efb6b2c56c6f4ce2) |

  12. <details>
        <summary>Land of Logic</summary>

        |                       | Ruby                                                                                              |
        |-----------------------|---------------------------------------------------------------------------------------------------|
        | longestWord           | [3974060](https://github.com/JoshSinyor/codesignal/tree/3974060c1c316565ab29ab0a4bf5a948f28b9b24) |
        | Valid Time            | [fd11293](https://github.com/JoshSinyor/codesignal/tree/fd11293e457a7ac7f06f6420f434a7ae8bfd25f0) | 
        | sumUpNumbers          | [7d79f15](https://github.com/JoshSinyor/codesignal/tree/7d79f15fbdd6f1d89db8fe48e958dde3dfa362f6) |
        | Different Squares     | Current |
        | digitsProduct         | N/A |
        | File Naming           | N/A |
        | messageFromBinaryCode | N/A |
        | spiralNumbers         | N/A |
        | Sudoku                | N/A |

---

## Dependencies

This program's dependencies are minimal and relate solely to testing. All dependencies are explicitly invoked in the `Gemfile`.

- [Ruby](https://www.ruby-lang.org/), courtesy of [Yukihiro Matsumoto](https://github.com/matz).
- [RSpec](https://rspec.info/), courtesy of [Jon Rowe](https://github.com/JonRowe), [Benoit Tigeot](https://github.com/benoittgt), [Phil Pirozhkov](https://github.com/pirj), [Xavier Shay](https://github.com/xaviershay) and [Yuji Nakayama](https://github.com/yujinakayama).
- [Rubocop](https://rubocop.org/) and [Rubocop-RSpec](https://github.com/rubocop/rubocop-rspec), both courtesy of [Bozhidar Batsov](https://github.com/bbatsov).
- [SimpleCov](https://github.com/simplecov-ruby/simplecov), courtesy of [Christoph Olszowka](https://github.com/colszowka).
- [SimpleCov-Console](https://github.com/chetan/simplecov-console), courtesy of [Chetan Sarva](https://github.com/chetan).

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
