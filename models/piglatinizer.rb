class PigLatinizer

    def piglatinize(string)
        split = string.split(" ")
        split_word = split.map do |word|
          piglatinize_word(word)
        end
        split_word.join(" ")
    end
    
    def piglatinize_word(word)
        first_letter = word[0].downcase
        vowels =["a", "e", "i", "o", "u"]
        # if vowel put way ay the end of word
        if vowels.include?(first_letter)
            "#{word}way"
       else
          consonants = []
          consonants << word[0]
            if vowels.include?(word[1]) == false
              consonants << word[1]
              if vowels.include?(word[2]) == false
                consonants << word[2]
              end
            end
          "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end
    




end