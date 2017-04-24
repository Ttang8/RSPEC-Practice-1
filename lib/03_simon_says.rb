def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num = 2)
  new_str = []
  n = 0
  until n == num
    new_str << string
    n += 1
  end
  new_str.join(" ")
end

def start_of_word(string, num)
  string.chars.take(num).join
end

def first_word(string)
  arr = string.split
  arr[0]
end

def titleize(string)
  little_words = ["the", "and", "a", "an", "over"]
  arr = string.split
  title = []

  arr.each_index do |idx|
    if idx == 0
      title << arr[idx].capitalize
      next
    end

    if little_words.include?(arr[idx])
      title << arr[idx]
    else
      title << arr[idx].capitalize
    end
  end

title.join(" ")
end
