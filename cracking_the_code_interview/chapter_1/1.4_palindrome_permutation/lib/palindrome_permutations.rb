#Given a string, write a function to check if it 
#is a permutation of a palindrome. A palindrome 
#is a word or phrase that is the same forwards and 
#backwards. A permutation is a rearrangement of letters. 
#The palindrome does not need to be limited to just dictionary words. 

class PalindromePermutations

    def find_permutations(word)
        palindrome = false
        num = word.length
        split_word = word.split(//)
        all_combos = split_word.repeated_permutation(num).to_a
        all_combos.each do |combo|
            palindrome = true if combo == combo.reverse
        end
        palindrome
    end
end