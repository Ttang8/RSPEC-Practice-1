def translate(string)
  arr = string.split
  pig_arr = []
  puncs = ",.:;'?!'"
  punc_store = ""

  arr.each do |word|
    if puncs.include?(word[-1])
      punc_store << word[-1]
      word = word[0...-1]
    end

    if word[0] == word[0].downcase
      pig_arr << pig_latinize(word) + punc_store
    else
      pig_arr << pig_latinize(word).capitalize + punc_store
    end

    punc_store = ""
  end

  pig_arr.join(" ")
end

def pig_latinize(word)
  vowels = "aeiou"

  until vowels.include?(word[0])
    if word[0..1] == "qu"
      word = word[2..-1] + word[0..1]
    elsif word[0..2] == "sch"
      word = word[3..-1] + word[0..2]
    else
      word = word[1..-1] + word[0]
    end
  end

  word + "ay"
end
