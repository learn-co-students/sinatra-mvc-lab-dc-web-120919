class PigLatinizer
    def piglatinize(string)
        user_string = string.split(" ")
        user_str_arr = change_word(user_string)
        user_str_arr.join(" ")
    end
  
    def change_word(array)
        array.map do |letter|
        l = letter
   
        if l.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
            l + "way"
        else
            new_array = []
            new_array << l[0]
  
            i = 1
            until l[i].start_with?("a", "e", "i", "o", "u")
                new_array << l[i]
                i += 1
            end
            "#{l[new_array.length..-1] + new_array.join + "ay"}"
        end
    end
    end
end