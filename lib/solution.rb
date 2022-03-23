# frozen_string_literal: true

def solution(sequence)
  return true if sequence.size < 3
  return false if sequence.size - sequence.uniq.size > 1

  parse_sequence(sequence)
end

private

def parse_sequence(sequence)
  last_high = sequence[0]
  next_high = sequence[1]
  removed = 0

  sequence[1..].each_with_index do |element, index|
    previous_element = sequence[index]
    subsequent_element = sequence[index + 2]

    if previous_element >= element
      removed += 1
      return false if removed > 1
      return false if index.positive? && element <= last_high && subsequent_element && subsequent_element <= next_high
    end

    last_high = previous_element if previous_element > last_high
    next_high = element if element > next_high
  end

  removed == 1
end

# Simpler but slower alternative.

# def solution(sequence)
#   sequence.combination(sequence.size-1).any? do |arrangement|
#     arrangement == arrangement.sort && arrangement == arrangement.uniq
#   end
# end
