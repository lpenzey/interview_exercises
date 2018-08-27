require 'prime_factor'

describe PrimeFactor do
  let (:calculator) { PrimeFactor.new }

  describe '.factor_finder' do
      it 'returns the largest prime factor under 2' do
        result = calculator.factor_finder(2)

        expect(result).to eq 2
      end

      it 'returns the largest prime factor under 3' do
        result = calculator.factor_finder(3)

        expect(result).to eq 3
      end

      it 'returns the largest prime factor under 4' do
        result = calculator.factor_finder(4)

        expect(result).to eq 2
      end

      it 'returns the largest prime factor under 5' do
        result = calculator.factor_finder(9)

        expect(result).to eq 3
      end

      it 'returns the largest prime factor under 25' do
        result = calculator.factor_finder(25)

        expect(result).to eq 5
      end

      it 'returns the largest prime factor under 48' do
        result = calculator.factor_finder(48)

        expect(result).to eq 3
      end

      it 'returns the largest prime factor under 48' do
        result = calculator.factor_finder(59595938)

        expect(result).to eq 85_381
      end

      it 'returns the largest prime factor under 600851475143' do
        result = calculator.factor_finder(600851475143)

        expect(result).to eq 6857
      end

      it 'returns the largest prime factor under 9,637,857,348,956' do
        result = calculator.factor_finder(9637857348956)

        expect(result).to eq 5418947
      end
  end
end