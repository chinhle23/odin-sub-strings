def substrings(string, dictionary)
  word_count = {}
  dictionary.each do |word|
    stringCopy = string.downcase
    while stringCopy.include?(word) do
      word_count[word] = word_count.key?(word) ? word_count[word] + 1 : 1
      stringCopy.sub!(word,"")
    end
  end
  word_count 
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary) # { "below" => 1, "low" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary)
#  { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
