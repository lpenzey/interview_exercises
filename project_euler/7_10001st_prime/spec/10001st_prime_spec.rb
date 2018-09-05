require '10001st_prime'

describe 'PrimeFinder' do
  let (:prime_generator) { PrimeFinder.new }

  describe '.find_prime' do
    it 'finds the 1st prime number' do
      result = prime_generator.find_prime_index(1)

      expect(result).to eq 2
    end

    it 'finds the 2nd prime number' do
      result = prime_generator.find_prime_index(2)

      expect(result).to eq 3
    end

    it 'finds the 3rd prime number' do
      result = prime_generator.find_prime_index(3)

      expect(result).to eq 5
    end
    it 'finds the 5th prime number' do
      result = prime_generator.find_prime_index(5)

      expect(result).to eq 11
    end

    it 'finds the 10th prime number' do
      result = prime_generator.find_prime_index(10)

      expect(result).to eq 29
    end

    it 'finds the 25th prime number' do
      result = prime_generator.find_prime_index(25)

      expect(result).to eq 97
    end

    it 'finds the 10001st prime number' do
      result = prime_generator.find_prime_index(10_001)

      expect(result).to eq 104_743
    end
  end
end
