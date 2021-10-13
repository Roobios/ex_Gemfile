def caesar_cipher(string, dec)
  
  sentence = string.split""
  final_string=[]
  max = sentence.length

  if dec > 26
    puts "La valeur de décalage est trop grand.\n Veuillez choisir un nombre inférieur ou égal à 26."
  else
    max.times do |letter|
      let = sentence[letter].ord 
      if let != 32 && let != 33 && ((let+dec).between?(97,122) || (let+dec).between?(65,90))
        final_string << (let + dec).chr
      elsif (let+dec).between?(91,96) || (let+dec).between?(123,126)
        final_string << (let + dec-26).chr
      else
        final_string << let.chr
      end
    end
  end
  return final_string.join""
end

puts caesar_cipher("What a string!", 5) #Bmfy f xywnsl!