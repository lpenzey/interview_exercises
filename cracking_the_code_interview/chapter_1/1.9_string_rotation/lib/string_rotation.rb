# assume you have a method isSubstring which
# checks if one word is a substring of another
# Given two strings, s1 and s2, write code to
# check if s2 is a rotation of s1 using only one
# call to isSubstring (ef 'waterbottle' is a
# rotation of "erbottlewat")

class StringRotation
  def is_substring(string1, string2)
    s1 = string1.split(//)
    s2 = string2.split(//)
    substring = false
    string1.length.times do
      s1.rotate!
      substring = true if s1 == s2
    end
    substring
  end
end
