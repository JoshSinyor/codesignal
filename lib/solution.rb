# frozen_string_literal: true

def solution(picture)
  border = '*' * (picture.first.length + 2)
  [border] + picture.map { |row| "*#{row}*" } + [border]
end
