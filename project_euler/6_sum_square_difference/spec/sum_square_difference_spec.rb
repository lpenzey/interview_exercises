require 'sum_square_difference'

describe 'SumSquareDifference' do
  let (:sum_dif) { SumSquareDifference.new }

  describe '.find_sum_square_difference' do
    it 'returns difference between the sum
      of the squares of the first ten 5
      numbers and the square of the sum' do

        result = sum_dif.find_sum_square_difference(1..5)

        expect(result).to eq 170
      end

    it 'returns difference between the sum
    of the squares of the first ten natural
    numbers and the square of the sum' do

      result = sum_dif.find_sum_square_difference(1..10)

      expect(result).to eq 2640
    end

    it 'returns difference between the sum
    of the squares of the first 20 natural
    numbers and the square of the sum' do

      result = sum_dif.find_sum_square_difference(1..20)

      expect(result).to eq 41_230
    end

    it 'returns difference between the sum
    of the squares of the first 20 natural
    numbers and the square of the sum' do

      result = sum_dif.find_sum_square_difference(1..50)

      expect(result).to eq 1_582_700
    end

    it 'returns difference between the sum
    of the squares of the first 20 natural
    numbers and the square of the sum' do

      result = sum_dif.find_sum_square_difference(1..100)

      expect(result).to eq 25_164_150
    end
  end
end
