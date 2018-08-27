#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

class PrimeFactor

    def factor_finder(number)
      largest_prime_factor = 2
      div = 2
      while number > 1
        while number % div == 0 
          number = number / div
       end
        largest_prime_factor = div
        div += 1
      end
      largest_prime_factor
    end
  end