
def caesar_cipher(words, shift_factor)
    ord_numbers = words.chars.map {|char| char.ord}
    #puts ord_numbers
    shifted_numbers = ord_numbers.map do |onum| 
        if onum.between?(65, 90)
            (onum + shift_factor) < 91 ? (onum + shift_factor) : (onum + shift_factor) -26
        elsif onum.between?(90, 122)
            (onum + shift_factor) < 123 ? (onum + shift_factor) : (onum + shift_factor) - 26
        else
            onum
        end
    end
    
    cipher = shifted_numbers.map {|nums| nums.chr}.join("")
    puts "'#{words}' shifted by #{shift_factor} is"
    puts cipher
end

caesar_cipher("This is a TEST. IT WORKS!", 6)