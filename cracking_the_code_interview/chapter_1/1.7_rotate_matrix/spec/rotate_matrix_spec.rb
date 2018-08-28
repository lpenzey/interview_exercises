require 'rotate_matrix'

describe RotateMatrix do 
    let (:matrix) { RotateMatrix.new }

    describe '.rotate' do 
        it 'rotates a 2x2 matrix 90 degrees' do 

        result = matrix.rotate([[1,2], [3,4]])

        expect(result).to eq ([[3,1],[4,2]])
        end
        

        it 'rotates a 3x3 matrix 90 degrees' do 

            result = matrix.rotate([[1,2,3], [4,5,6], [7,8,9]])
    
            expect(result).to eq ([[7,4,1], [8,5,2], [9,6,3]])
        end

        it 'rotates a 4x4 matrix 90 degrees' do 

            result = matrix.rotate([[1,2,3,4], [5,6,7,8], [9,10,11,12], [13,14,15,16]])
    
            expect(result).to eq ([[13,9,5,1], [14,10,6,2], [15,11,7,3], [16,12,8,4]])
        end

        it 'rotates a 5x5 matrix 90 degrees' do 

            result = matrix.rotate([[1,2,3,4,5], [6,7,8,9,10], [11,12,13,14,15], [16,17,18,19,20], [21,22,23,24,25]])
    
            expect(result).to eq ([[21,16,11,6,1], [22,17,12,7,2], [23,18,13,8,3], [24,19,14,9,4], [25,20,15,10,5]])
        end
    end
end