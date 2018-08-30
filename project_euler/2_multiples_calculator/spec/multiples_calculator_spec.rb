# frozen_string_literal: true

require 'multiples_calculator'

describe MultiplesCalculator do
  let (:calculator) { MultiplesCalculator.new(range) }
  describe '.multiples_generator' do
    context 'when range is 1...5' do
      let (:range) { 1...5 }
      it 'returns sum of multiples of 3 and 5 under 5' do
        result = calculator.multiples_generator

        expect(result).to eq 3
      end
    end

    context 'when range is 1...10' do
      let (:range) { 1...10 }
      it 'returns sum of multiples of 3 and 5 under 10' do
        result = calculator.multiples_generator

        expect(result).to eq 23
      end
    end

    context 'when range is 1...20' do
      let (:range) { 1...20 }
      it 'returns sum of multiples of 3 and 5 under 20' do
        result = calculator.multiples_generator

        expect(result).to eq 78
      end
    end

    context 'when range is 1...100' do
      let (:range) { 1...100 }
      it 'returns sum of multiples of 3 and 5 under 100' do
        result = calculator.multiples_generator

        expect(result).to eq 2318
      end
    end

    context 'when range is 1...1000' do
      let (:range) { 1...1000 }
      it 'returns sum of multiples of 3 and 5 under 1000' do
        result = calculator.multiples_generator

        expect(result).to eq 233_168
      end
    end
  end
end
