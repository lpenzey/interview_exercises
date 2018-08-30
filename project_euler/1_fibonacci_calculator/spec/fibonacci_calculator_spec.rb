# frozen_string_literal: true

require 'fibonacci_calculator'

describe FibonacciCalculator do
  describe '.add_fib_sequence' do
    it 'returns sum of even fibonacci numbers under 100' do
      calculator = FibonacciCalculator.new(100)

      result = calculator.add_fib_sequence

      expect(result).to eq 44
    end

    it 'returns sum of even fibonacci numbers under 1000' do
      calculator = FibonacciCalculator.new(1000)

      result = calculator.add_fib_sequence

      expect(result).to eq 798
    end

    it 'returns sum of even fibonacci numbers under 10000' do
      calculator = FibonacciCalculator.new(10_000)

      result = calculator.add_fib_sequence

      expect(result).to eq 3382
    end

    it 'returns sum of even fibonacci numbers under 1000000' do
      calculator = FibonacciCalculator.new(1_000_000)

      result = calculator.add_fib_sequence

      expect(result).to eq 1_089_154
    end

    it 'returns sum of even fibonacci numbers under 4000000' do
      calculator = FibonacciCalculator.new(4_000_000)

      result = calculator.add_fib_sequence

      expect(result).to eq 4_613_732
    end
  end
end
