# frozen_string_literal: true

# You are given an array of strings names representing filenames. The array is sorted in order of file creation, such
# that names[i] represents the name of a file created before names[i+1] and after names[i-1] (assume 0-based indexing).
# Because all files must have unique names, files created later with the same name as a file created earlier should have
# an additional (k) suffix in their names, where k is the smallest positive integer (starting from 1) that does not
# appear in previous file names.

# Your task is to iterate through all elements of names (from left to right) and update all filenames based on the
# above. Return an array of proper filenames.

def solution(file_array)
  file_array.each_with_index do |file, index|
    next unless file_array[0...index].include?(file)

    suffix = 1
    suffix += 1 while file_array[0...index].include?(renamed_file = "#{file}(#{suffix})")
    file_array[index] = renamed_file
  end
end

# Alternate solution using escaped regular expressions and array of previous suffixes

# def solution(name_array)
#   name_array.map! { |name| name.gsub(/\((\d+)\)/, '%\\1%') }

#   (0...name_array.size).each do |index|
#     name = name_array[index]

#     next if name_array.count(name) == 1
#     next if name_array.index(name) == index

#     suffixes = []

#     (0...index).each do |prior_index|
#       prior_name = name_array[prior_index]
#       next if prior_name.match(/\A#{name}%\d+%\z/).nil?

#       suffixes << prior_name.match(/(\d+)%\z/)[0].to_i
#     end

#     next name_array[index] += '%1%' if suffixes.empty?

#     1.upto(suffixes.max + 1) { |suffix| break name_array[index] += "%#{suffix}%" unless suffixes.include?(suffix) }
#   end

#   name_array.map { |name| name.gsub(/%(\d+)%/, '(\\1)') }
# end
