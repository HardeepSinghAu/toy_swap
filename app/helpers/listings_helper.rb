module ListingsHelper

    def format_condition(condition)
        condition_words = condition.split("_").map do |word|
            word.capitalize 
        end
        condition_words.join(" ")
    end 

end
