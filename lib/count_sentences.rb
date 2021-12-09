require 'pry'

class String
  attr_accessor :string
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
    self.split(/(\?|\.|!)/).filter{|sentance| sentance.length > 1}.length
  end
  
end