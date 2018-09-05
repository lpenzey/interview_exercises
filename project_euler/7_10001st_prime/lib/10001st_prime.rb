require 'Prime'

class PrimeFinder

  def find_prime_index(num)
    prime_numbers = []
    increment = 2
    until prime_numbers.length == num
      prime_numbers << increment if Prime.prime?(increment)
      increment += 1
    end
    prime_numbers.last
  end
end
