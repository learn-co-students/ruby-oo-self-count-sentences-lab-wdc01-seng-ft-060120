require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count_array = self.split(/\?|\.|\!/)
    count_array.delete_if{|wannabe_sentence| wannabe_sentence.length == 0}
    return count_array.length
  end
end