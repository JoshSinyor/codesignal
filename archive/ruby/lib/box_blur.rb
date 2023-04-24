# frozen_string_literal: true

# Last night you partied a little too hard. Now there's a black and white photo of you that's about to go viral!
# You can't let this ruin your reputation, so you want to apply the box blur algorithm to the photo to hide its content.

# The pixels in the input image are represented as integers. The algorithm distorts the input image in the following
# way: Every pixel x in the output image has a value equal to the average value of the pixel values from the 3 × 3
# square that has its center at x, including x itself. All the pixels on the border of x are then removed.

# Return the blurred image as an integer, with the fractions rounded down.

def box_blur(img)
  blr = []
  img.each_cons(3) { |row| row.transpose.each_cons(3) { |sqr| blr.push(sqr.flatten.sum / 9) } }
  blr.each_slice(img.first.length - 2).to_a
end

# Alternative solution using nested collect method:

# def box_blur(img)
#   (1...img.length - 1).collect do |y|
#     (1...img[0].length - 1).collect do |x|
#       (-1..1).sum do |dx|
#         (-1..1).sum { |dy| img[y + dy][x + dx] }
#       end / 9
#     end
#   end
# end
