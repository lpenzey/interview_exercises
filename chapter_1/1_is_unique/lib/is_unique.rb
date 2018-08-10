# frozen_string_literal: true

# Implement an algorithm to determine if
# a string has all unique characters. What if you
# cannot use additional data structures?

class IsUnique
  def check_unique(string)
    letters = string.downcase.scan(/[a-z]/)
    letters.length == letters.uniq.length
  end
  end
