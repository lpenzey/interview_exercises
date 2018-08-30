# The largest palindrome made from the product
# of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the
# product of two 3-digit numbers.

class LargestPalindrome
  def is_palindrome?(num)
    num.to_s == num.to_s.reverse
  end

  def largest(num1, num2)
    largest_palindrome = 0
    for element_1 in (num1..num2)
      for element_2 in (num1..num2)
        multiple = element_1 * element_2
        if is_palindrome?(multiple) && multiple > largest_palindrome
          largest_palindrome = multiple
        end
      end
    end
    largest_palindrome
  end
end
