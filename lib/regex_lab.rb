require 'pry'

def starts_with_a_vowel?(word)
    word.match?(/\A[AEIOU]/i)
  

end

def words_starting_with_un_and_ending_with_ing(text)
    words = []
    text.split(' ').each do |x|
        if x.match?(/\Aun|ing\z/i)
       words << x
        end
    end
    words
end

def words_five_letters_long(text)
    words = []
    text.split(' ').each do |x|
        if x.match?(/^\w{5}$/)
            words << x
        end
    end
    words
end

def first_word_capitalized_and_ends_with_punctuation?(text) 
    array = text.split(/\s/)
    array[0].match?(/\A[A-Z]/) && array[-1].match?(/\W$/)
end

def valid_phone_number?(phone)
    # phone.match?(/\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/)
    phone.gsub(/\D/, '').length == 10
end
