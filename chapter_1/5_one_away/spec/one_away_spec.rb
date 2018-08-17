require 'one_away'

describe OneAway do
  let (:calculator) { OneAway.new }

  describe '.one_away?' do
    it 'returns false for identical strings' do
      result = calculator.one_away?('apple', 'apple')

      expect(result).to be false
    end

    it 'returns true for strings with one character difference' do
      result = calculator.one_away?('apple', 'appl')

      expect(result).to be true
    end

    it 'returns true for strings with one character difference' do
      result = calculator.one_away?('appl', 'apple')

      expect(result).to be true
    end

    it 'returns true for strings with one character substitution' do
      result = calculator.one_away?('apple', 'apole')

      expect(result).to be true
    end
  end

  describe '.one_char_dif?' do
    it 'returns true for string that are one character in size apart' do
      result = calculator.one_char_dif?('apple', 'appl')

      expect(result).to be true
    end

    it 'returns false for string that are two characters in size apart' do
      result = calculator.one_char_dif?('applee', 'appl')

      expect(result).to be false
    end
  end

  describe '.one_substitution?' do
    it 'returns true for string that are one character in size apart' do
      result = calculator.one_substitution?('apple', 'appli')

      expect(result).to be true
    end

    it 'returns false for identical strings' do
      result = calculator.one_substitution?('apple', 'apple')

      expect(result).to be false
    end
  end
end
