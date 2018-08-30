#2520 is the smallest number that can be divided 
#by each of the numbers from 1 to 10 without any 
#remainder. What is the smallest positive number 
#that is evenly divisible by all of the numbers 
#from 1 to 20?

class SmallestMultiple
    def multiples(range)
      smallest_multiple = 2
      smallest_multiple += 2 until range.all? { |i| smallest_multiple % i == 0 }
      smallest_multiple
    end
end