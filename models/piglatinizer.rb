class PigLatinizer
def piglatinize(string)
    input = string.split(" ")
    pig_input_array = pig_latinizer(input)
    pig_input_array.join(" ")
  end
  def pig_latinizer(array)
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