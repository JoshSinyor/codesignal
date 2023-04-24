# frozen_string_literal: true

# Given an array of integers, replace all the occurrences of elemToReplace with substitutionElem.

def array_replace(arr, old_elt, new_elt)
  arr.map { |elt| elt == old_elt ? new_elt : elt }
end
