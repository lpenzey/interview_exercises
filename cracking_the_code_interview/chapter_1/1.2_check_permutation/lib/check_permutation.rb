# frozen_string_literal: true

# Given two strings, write a method to decide
# if one is a permutation of the other.

class CheckPermutation
  def check(thing1, thing2)
    all_combos = thing1.chars.permutation.map &:join
    all_combos.include?(thing2)
  end
  end
