require 'palindrome_permutations'

describe PalindromePermutations do 
    let ( :palindrome ) { PalindromePermutations.new }

    describe '.find_permutations' do 
        it 'returns true for string \'a\'' do 

        result = palindrome.find_permutations('a')

        expect(result).to eq true
        end

        it 'returns false for string \'ab\'' do 

            result = palindrome.find_permutations('ab')
    
            expect(result).to eq true
        end

        it 'returns true for string \'aba\'' do 

            result = palindrome.find_permutations('aba')
    
            expect(result).to eq true
        end

        it 'returns true for string \'baba\'' do 

            result = palindrome.find_permutations('baba')
    
            expect(result).to eq true
        end

        it 'returns true for string \'ba123xa\'' do 

            result = palindrome.find_permutations('ba123xa')
    
            expect(result).to eq true
        end

        it 'returns true for string \'oacttac\'' do 

            result = palindrome.find_permutations('oacttac')
    
            expect(result).to eq true
        end
    end
end