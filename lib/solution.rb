# frozen_string_literal: true

def solution(directions)
  directions = directions.split('')

  directions.keep_if { |element| element =~ /[NSEW]/ }

  locations = [[0, 0]]
  xaxis = 0
  yaxis = 0

  directions.each do |direction|
    case direction
    when 'N'
      locations.push([xaxis += 1, yaxis += 0])
    when 'E'
      locations.push([xaxis += 0, yaxis += 1])
    when 'S'
      locations.push([xaxis -= 1, yaxis += 0])
    when 'W'
      locations.push([xaxis += 0, yaxis -= 1])
    end
  end

  locations.select { |place| locations.count(place) > 1 }.uniq.size
end
