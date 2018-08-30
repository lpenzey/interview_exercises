# frozen_string_literal: true

# If we list all the natural numbers below 10 that are multiples
# of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

class MultiplesCalculator
  def initialize(range)
    @range = range
  end

  def multiples_generator
    all_multiples = (@range.map do |digit|
                       digit if (digit % 3) == 0 || (digit % 5) == 0
                     end).compact
    total_sum = 0
    all_multiples.each do |multiple|
      total_sum += multiple
    end
    total_sum
  end
  end
