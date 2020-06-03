require 'pry'

class String

  def sentence?
    return true if self.end_with?(".")
    return false
  end

  def question?
    return true if self.end_with?("?")
    return false

  end

  def exclamation?
    return true if self.end_with?("!")
    return false
  end

  #return amount of sentences in a string
  #converts self to char array, and intersects each char element
  #with sentence punctuation, then adds to count
  def count_sentences
    chars = self.chars
    punct = ['.','?','!']
    count = 0
    last_char_was_punct = false
    print self
    chars.each{|char|
      print char
      #use intersection to see if punctuation exists
      if ((([char] & punct).length == 1))
        if !last_char_was_punct
          count += 1
        end 
        last_char_was_punct = true        
      else
        last_char_was_punct = false        
      end
    }
    count
  end
end