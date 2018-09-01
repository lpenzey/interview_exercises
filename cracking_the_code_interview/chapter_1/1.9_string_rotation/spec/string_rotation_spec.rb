require 'string_rotation'

describe StringRotation do
  let (:stringify) { StringRotation.new }

  describe '.is_substring' do
    it 'returns true for strings \'abc\' and \'cba\'' do
      result = stringify.is_substring('abc', 'cab')

      expect(result).to eq true
    end

    it 'returns false for strings \'bat\' and \'tag\'' do
      result = stringify.is_substring('bat', 'tag')

      expect(result).to eq false
    end

    it 'returns true for strings \'waterbottle\' and \'erbottlewat\'' do
      result = stringify.is_substring('waterbottle', 'erbottlewat')

      expect(result).to eq true
    end

    it 'returns true for strings \'waterbottle\' and \'erbottlewat\'' do
      result = stringify.is_substring('waterbottle', 'erbottlewat')

      expect(result).to eq true
    end
  end
end
