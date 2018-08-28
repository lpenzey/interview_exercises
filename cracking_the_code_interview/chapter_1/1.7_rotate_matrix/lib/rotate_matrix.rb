class RotateMatrix

    def rotate(matrix)
        rotated_array = []
        matrix.transpose.each do |element|
             rotated_array << element.reverse
        end
        rotated_array
    end
end