require 'largest_palindrome'

describe LargestPalindrome do
  let (:palindrome) { LargestPalindrome.new }

  describe '.largest' do
    it 'returns the largest palindrome from product of 1 digit numbers' do
      result = palindrome.largest(1, 9)

      expect(result).to eq(9)
    end

    it 'returns the largest palindrome from product of 2 digit numbers' do
      result = palindrome.largest(10, 99)

      expect(result).to eq(9009)
    end

    it 'returns the largest palindrome from product of 3 digit numbers' do
      result = palindrome.largest(100, 999)

      expect(result).to eq(906_609)
    end

    xit 'returns the largest palindrome from product of 4 digit numbers' do
        result = palindrome.largest(1000, 9099)
  
        expect(result).to eq(81800818)
      end
  end
end
