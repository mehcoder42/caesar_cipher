def caesar_cipher(string,shift_position) 
    splitted_string = string.split("").map do |char| 
        if ('a'..'z').include?(char) || ('A'..'Z').include?(char)
            chiphered_char = char.ord + shift_position
            if char.upcase == char.chr
                (char.ord + shift_position > 90) ? splitted_string = char.ord + shift_position - 26 : splitted_string = char.ord + shift_position
            else 
                (char.ord + shift_position > 122) ? splitted_string = char.ord + shift_position - 26 : splitted_string = char.ord + shift_position
            end
        else
            char
        end
    end
    result_string = splitted_string.map {|char| char.chr}.join(" ")
    puts result_string
end

def get_string
    puts "Please type something for me to cipher"
    user_string = gets.chomp
    return user_string
end

def get_number
    puts "How much you want to cipher it?"
    user_num = gets.chomp
    return user_num
end

get_string
get_number
caesar_cipher(user_string,user_num)