require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  #split on strings that match a punctuation mark followed by whitespace and count the
  #number of strings
  def count_sentences
    self.split(/[.?!] /).count
  end
end
