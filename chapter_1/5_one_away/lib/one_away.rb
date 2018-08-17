# There are three types of edits that can be performed
# on strings: insert a character, remove a character,
# or replace a character. Given two strings, write a
# function to check if they are one edit or zero edits away.

class OneAway
  def one_away?(string1, string2)
    if string1 == string2
      false
    elsif one_char_dif?(string1, string2) || one_substitution?(string1, string2)
      true
    end
  end

  def one_char_dif?(string1, string2)
    (string1.length - string2.length).abs == 1
  end

  def one_substitution?(string1, string2)
    word_1 = string1.split(//)
    word_2 = string2.split(//)
    bad_letters = []
    word_1.each_with_index do |letter, index|
      if letter != word_2[index]
        bad_letters << letter
      end
    end
    bad_letters.size == 1
  end
end