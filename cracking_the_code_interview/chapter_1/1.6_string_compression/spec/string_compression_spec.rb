require 'string_compression'

describe StringCompression do 
    let (:compressor) { StringCompression.new }

    describe '.compress' do 

        it 'returns aabb for string \'aabb\'' do 

        result = compressor.compress('aabb')

        expect(result).to eq 'aabb'
        end

        it 'returns a3b3 for string \'aaabbb\'' do 

            result = compressor.compress('aaabbb')
    
            expect(result).to eq 'a3b3'
        end

        it 'returns a5b3c7 for string \'aaaaabbbccccccc\'' do 

            result = compressor.compress('aaaaabbbccccccc')
    
            expect(result).to eq 'a5b3c7'
        end

        it 'returns a12 for string \'aaaaaaaaaaaa\'' do 

            result = compressor.compress('aaaaaaaaaaaa')
    
            expect(result).to eq 'a12'
        end
    end
end