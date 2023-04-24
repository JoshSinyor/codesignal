# frozen_string_literal: true

# Call two arms equally strong if the heaviest weights they each are able to lift are equal.

# Call two people equally strong if their strongest arms are equally strong (the strongest arm can be both the right
# and the left), and so are their weakest arms.

# Given your and your friend's arms' lifting capabilities find out if you two are equally strong.

def equally_strong?(ylft, yrgt, tlft, trgt)
  [ylft, yrgt].sort == [tlft, trgt].sort
end
