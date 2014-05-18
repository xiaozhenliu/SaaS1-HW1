module FunWithStrings
  def palindrome?
    self.downcase.gsub(/\W/, '') == self.downcase.reverse.gsub(/\W/, '')
  end
  def count_words
    count = Hash.new(0)
    self.downcase.split.each {|word| count[word.gsub(/\W/,"")] +=1 }
    count.delete("") if count.has_key?("")
    return count
  end
  def anagram_groups
    agMap = Hash.new
    agGroup = Hash.new
    self.split.each {|word| agMap[word] = word.downcase.chars.sort.join}
    agMap.values.each{|v| agGroup[v]=[]}
    agMap.each {|k,v| agGroup[v].push(k)}
    return agGroup.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
