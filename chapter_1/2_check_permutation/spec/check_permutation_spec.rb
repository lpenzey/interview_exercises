# frozen_string_literal: true

require 'check_permutation'

describe CheckPermutation do
  let (:permutation) { CheckPermutation.new }

  describe '.check' do
    it 'returns true given strings a and a' do
      result = permutation.check('a', 'a')

      expect(result).to be true
    end

    it 'returns false given strings a and b' do
      result = permutation.check('a', 'b')

      expect(result).to be false
    end

    it 'returns true given strings trap and prat' do
      result = permutation.check('trap', 'prat')

      expect(result).to be true
    end

    it 'returns true given strings taco cat and tac ocat' do
      result = permutation.check('taco cat', 'tac ocat')

      expect(result).to be true
    end

    it 'returns false given strings taco cat and bac ocat' do
      result = permutation.check('taco cat', 'bac ocat')

      expect(result).to be false
    end

    it 'returns true given strings race car and car race' do
      result = permutation.check('race car', 'car race')

      expect(result).to be true
    end
  end
end
