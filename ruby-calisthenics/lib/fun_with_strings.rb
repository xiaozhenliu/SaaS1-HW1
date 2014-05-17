module FunWithStrings
  def palindrome?
    self.downcase.gsub(/\W/, '') == self.reverse.gsub(/\W/, '')
  end
  def count_words
    count = Hash.new(0)
    self.downcase.split.each {|word| count[word.gsub(/\W/,"")] +=1 }
    return count
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
