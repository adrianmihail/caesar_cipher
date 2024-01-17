def caesar_cipher (string, shift)
  letters = string.split("")
  char_letters = letters.map do |character| 
    if ("A".."Z").include?(character) || ("a".."z").include?(character)
      character.ord + shift

    else
      character.ord
    end
  end
  
  return p char_letters

  cipher = char_letters.map {|char| char.chr}
  puts cipher.join()
end


caesar_cipher("What a string!", 5)