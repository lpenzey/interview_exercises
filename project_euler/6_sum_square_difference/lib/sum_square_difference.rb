# frozen_string_literal: true

# Find the difference between the sum of
# the squares of the first one hundred
# natural numbers and the square of the sum.

class SumSquareDifference
  def find_sum_square_difference(range)
    sum_square = find_sum_square(range)
    square_sum = find_square_of_sums(range)
    square_sum - sum_square
  end

  def find_sum_square(range)
    square_sum = 0
    range.each do |num|
      square_sum += (num * num)
    end
    square_sum
  end

  def find_square_of_sums(range)
    sum_square = 0
    range.each do |num|
      sum_square += num
    end
    sum_square *= sum_square
  end
end
