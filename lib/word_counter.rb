def word_counter(corpus, dictionary)
    (0..dictionary.length - 1).each do |i|
  
      item_number = corpus.downcase.split(" ").map { |item| item.include?(dictionary[i]) }.count(true)
      unless item_number == 0
       puts "La phrase contient #{item_number} fois le mot '#{dictionary[i]}'."
      end
    end
end
  
  word_counter(corpus, dictionary)