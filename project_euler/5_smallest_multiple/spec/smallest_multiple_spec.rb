require 'smallest_multiple'

describe SmallestMultiple do
  let (:calculator) { SmallestMultiple.new }

  describe '.multiples' do
    it 'returns smallest num that can be divided by nums 1..3 w/out remainder' do
      result = calculator.multiples(1..3)

      expect(result).to eq(6)
    end

    it 'returns smallest num that can be divided by nums 1..5 w/out remainder' do
      result = calculator.multiples(1..5)

      expect(result).to eq(60)
    end

    it 'returns smallest num that can be divided by nums 1..6 w/out remainder' do
      result = calculator.multiples(1..6)

      expect(result).to eq(60)
    end

    it 'returns smallest num that can be divided by nums 1..7 w/out remainder' do
      result = calculator.multiples(1..7)

      expect(result).to eq(420)
    end

    it 'returns smallest num that can be divided by nums 1..10 w/out remainder' do
      result = calculator.multiples(1..10)

      expect(result).to eq(2520)
    end

    it 'returns smallest num that can be divided by nums 1..20 w/out remainder' do
      result = calculator.multiples(1..20)

      expect(result).to eq(232_792_560)
    end
  end
end