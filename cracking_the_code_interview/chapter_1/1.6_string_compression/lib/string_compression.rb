#Implement a method to perform basic string compression
#using the counts of repeated characters. 
#For example, the string aabcccccaaa would become 
#a2blc5a3. If the "compressed" string would not 
#become smaller than the original string, your 
#method should return the original string. You can 
#assume the string has only uppercase and lowercase 
#letters (a - z). 

class StringCompression

    def compress(string)
        starting_length = string.length
        compressed_string = ''
        shortened_length = 0
        letters = string.split(//)
        count = 1
        starting_length.times do |index|
            if letters[index] == letters[index+1]
                count += 1
            else 
                compressed_string += letters[index] + count.to_s
                shortened_length += 2
                count = 1
            end
            return string if shortened_length >= starting_length
        end
        compressed_string
    end

end