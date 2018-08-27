require 'one_away'

describe OneAway do 
    let (:foo) { OneAway.new }

    describe '.is_one_away?' do 
        it 'returns true for strings \'a\' and \'ab\'' do 
            
        result = foo.is_one_away?('a', 'ab')

        expect(result).to eq (true)
        end
        
        it 'returns false for strings \'a\' and \'aba\'' do 
            
            result = foo.is_one_away?('a', 'aba')
    
            expect(result).to eq (false)
        end

        it 'returns true for strings \'apple\' and \'aple\'' do 
            
            result = foo.is_one_away?('apple', 'aple')
    
            expect(result).to eq (true)
        end

        it 'returns true for strings \'pale\' and \'bale\'' do 
            
            result = foo.is_one_away?('pale', 'bale')
    
            expect(result).to eq (true)
        end

        it 'returns true for strings \'parrot\' and \'parrit\'' do 
            
            result = foo.is_one_away?('parrot', 'parrit')
    
            expect(result).to eq (true)
        end
    end
end


