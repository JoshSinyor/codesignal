# frozen_string_literal: true

def solution(cell1, cell2)
  (cell1[0].ord + cell1[1].to_i).odd? == (cell2[0].ord + cell2[1].to_i).odd?
end

# Alternate solution using match

# def solution(cell1, cell2)
#   cells = [cell1, cell2]

#   cells.map! do |cell|
#     case cell.chars[0].match?(/[ACEG]/)
#     when true
#       cell.chars[1].to_i.even? ? 'white' : 'black'
#     when false
#       cell.chars[1].to_i.odd? ? 'white' : 'black'
#     end
#   end

#   cells[0] == cells[1]
# end

# Alternate solution using codepoints instead of ord

# def solution(cell1, cell2)
#   (cell1[0].codepoints[0] + cell1[1].to_i).even? == (cell2[0].codepoints[0] + cell2[1].to_i).even?
# end
