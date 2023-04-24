# frozen_string_literal: true

# Given a rectangular matrix of characters, add a border of asterisks(*) to it.

def add_border(pic)
  bor = '*' * (pic.first.length + 2)
  [bor] + pic.map { |row| "*#{row}*" } + [bor]
end
