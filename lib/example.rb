# frozen_string_literal: true

def example_method(inputArray)
  outputArray = []

  inputArray.each_with_index do |element, index|
    break if (index + 1) == inputArray.length
    outputArray.push(element * inputArray[index + 1])
  end

  outputArray.sort[-1]
end
