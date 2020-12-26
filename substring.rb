def substring (string, dictionary)
    # arrString = string.split(/[, ;.?!]+/)
    countWordInStr = Hash.new
    string.downcase!


    dictionary.each do |word|
        # puts string.index(word)
        index = 0 
        while ((index = string.index(word, index)) != nil)
            if (countWordInStr.include?(word))
                countWordInStr[word] += 1
            else 
                countWordInStr[word] = 1    
            end    

            index += 1
        end
        
    end    
    
    countWordInStr

end



dictionary = ['below','down','go','going','horn',
            'how','howdy','it','i','low','own',
            'part','partner','sit']

system("clear")


# string = gets.chomp

# hash = Hash.new
# substring('Howdy partner, sit down! How\'s it going?', dictionary)

puts(substring('Howdy partner, sit down! How\'s it going?', dictionary)) 
