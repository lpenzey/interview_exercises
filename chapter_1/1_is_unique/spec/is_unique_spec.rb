require 'is_unique'

describe IsUnique do
  let (:unique) { IsUnique.new }

  describe '.check_unique' do
    it 'returns true for string \'a\'' do
      result = unique.check_unique('a')

      expect(result).to be true
    end

    it 'returns true for string \'ab\'' do
      result = unique.check_unique('ab')

      expect(result).to be true
    end

    it 'returns false for string \'aa\'' do
      result = unique.check_unique('aa')

      expect(result).to be false
    end

    it 'returns false for string \'abcdea\'' do
      result = unique.check_unique('abcdea')

      expect(result).to be false
    end

    it 'returns true for string \'abcdefghijklmnopqrstuvwxyz\'' do
      result = unique.check_unique('abcdefghijklmnopqrstuvwxyz')

      expect(result).to be true
    end

    it 'returns true for string \'AbcdefghIjklmNop\'' do
      result = unique.check_unique('AbcdefghIjklmNop')

      expect(result).to be true
    end

    it 'returns true for string \'AaBbCcDdEeFf\'' do
      result = unique.check_unique('AaBbCcDdEeFf')

      expect(result).to be false
    end
  end
end
