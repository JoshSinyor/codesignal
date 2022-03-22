# frozen_string_literal: true

def example_method(statues)
  statues.sort!
  originalSize = statues.size

  statues.each_with_index do |height, index|
    break if (index + 1) == statues.size
    statues.push(height + 1) if (height + 1) != statues[index + 1]
    statues.sort!
  end

  statues.size - originalSize
end
