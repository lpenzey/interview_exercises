# frozen_string_literal: true

# By considering the terms in the Fibonacci sequence whose
# values do not exceed four million,
# find the sum of the even-valued terms.

class FibonacciCalculator
  def initialize(limit)
    @limit = limit
  end

  def add_fib_sequence
    fib = [0, 1]
    place = 0
    while next_fib(fib, place) < @limit
      fib << next_fib(fib, place)
      place += 1
     end
    fib.delete_if(&:odd?)
    fib_sum = 0
    fib.each do |num|
      fib_sum += num
    end
    fib_sum
  end

  private

  def next_fib(fib, place)
    (fib[place] + fib[place + 1])
  end
  end
