#There are three types of edits that can be performed 
#on strings: insert a character, remove a character, 
#or replace a character. Given two strings, write a 
#function to check if they are one edit (or zero edits) away.

class OneAway

    def is_one_away?(string1, string2)
        first = string1.split(//)
        second = string2.split(//)
        char_dif = 0
        position = 0
        first.each do |_match|
            char_dif += 1 if first[position] != second[position]
            position += 1
        end
        if (string1.length - string2.length).abs > 1
            false
        elsif (string1.length - string2.length).abs == 1 || char_dif == 1
            true
        else 
            false
        end 
    end
end