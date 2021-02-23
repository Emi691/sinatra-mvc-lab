class PigLatinizer

    def piglatinize(string)
        words_array = string.split(" ")
        words_array.map do |word|
           parts = word.split(/([aeiouAEIOU].*)/)
           if parts.last == word
            suffix = "way"
           else
            suffix = "#{parts.first}ay" 
           end
           "#{parts.last}#{suffix}" 
        end.join(" ")
    end
end