# Implement an algorithm to determine if
# a string has all unique characters. What if you
# cannot use additional data structures?

class IsUnique
  def check_unique(string)
    letters = string.downcase.scan(/[a-z]/)
    unique_letters = []
    letters.each do |character|
      unless unique_letters.include?(character) 
        unique_letters << character
      end
    end
    letters.length == unique_letters.length
  end
end