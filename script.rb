def caesar_cipher (string, shift)
  letters = string.split("")
  char_letters = letters.map do |character| 
    if ("A".."Z").include?(character) || ("a".."z").include?(character)
      if (91..96).include?(character.ord + shift)
        letter_to_upcase = character.ord + shift + 6
        letter_to_upcase.chr.upcase
      else
        character.ord + shift
      end

    else
      character.ord
    end
  end


  cipher = char_letters.map {|char| char.chr}
  puts cipher.join()
end


caesar_cipher("What a string!", 5)