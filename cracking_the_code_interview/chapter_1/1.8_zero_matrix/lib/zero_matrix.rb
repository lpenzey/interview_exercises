# Write an algorithm such that if an element
# in an MxN matrix is 0, its entire row and
# column are set to 0.
require 'matrix'

class ZeroMatrix
  def find_index(matrix)
    @zero_index = Matrix[*matrix].index(0)
  end

  def get_coordinates
    @x = @zero_index[0]
    @y = @zero_index[1]
  end

  def zero_row(matrix)
    row = matrix[@x]
    row.map! do |_x|
      x = 0
    end
    matrix
  end

  def zero_column(matrix)
    @x = 0
    matrix.length.times do
      matrix[@x][@y] = 0
      @x += 1
    end
  end

  def make_zero(matrix)
    find_index(matrix)
    get_coordinates
    zero_row(matrix)
    zero_column(matrix)
    matrix
  end
end
