require 'zero_matrix'

describe ZeroMatrix do
  let (:foo) { ZeroMatrix.new }

  describe '.make_zero' do
    it 'finds zero element and zeroes corresponding row and column' do
      result = foo.make_zero([[1, 2, 0], [4, 5, 6]])

      expect(result).to eq([[0, 0, 0], [4, 5, 0]])
    end

    it 'finds zero element and zeroes corresponding row and column' do
      result = foo.make_zero([[1, 2, 3], [4, 0, 6]])

      expect(result).to eq([[1, 0, 3], [0, 0, 0]])
    end

    it 'finds zero element and zeroes corresponding row and column for 4x3 matrix' do
      result = foo.make_zero([[1, 2, 3, 4], [5, 6, 7, 0], [9, 10, 11, 12]])

      expect(result).to eq([[1, 2, 3, 0], [0, 0, 0, 0], [9, 10, 11, 0]])
    end

    it 'finds zero element and zeroes corresponding row and column for 8x7 matrix' do
      result = foo.make_zero([[1, 2, 3, 4, 5, 6, 7, 8],
                              [9, 10, 11, 12, 13, 14, 15, 16],
                              [0, 18, 19, 20, 21, 22, 23, 24],
                              [25, 26, 27, 28, 29, 30, 31, 32],
                              [33, 34, 35, 36, 37, 38, 39, 40],
                              [41, 42, 43, 44, 45, 46, 47, 48],
                              [49, 50, 51, 52, 53, 54, 55, 56]])

      expect(result).to eq([[0, 2, 3, 4, 5, 6, 7, 8],
                            [0, 10, 11, 12, 13, 14, 15, 16],
                            [0, 0, 0, 0, 0, 0, 0, 0],
                            [0, 26, 27, 28, 29, 30, 31, 32],
                            [0, 34, 35, 36, 37, 38, 39, 40],
                            [0, 42, 43, 44, 45, 46, 47, 48],
                            [0, 50, 51, 52, 53, 54, 55, 56]])
    end
  end
end
