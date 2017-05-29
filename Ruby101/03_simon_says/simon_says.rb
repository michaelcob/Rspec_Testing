#write your code here
def echo x
  x
end

def shout x
  x.upcase
end

def repeat(x,y=2)
  return ([x] * y).join(' ')
end

def start_of_word (x,y)
  x[0..(y-1)]
end

def first_word (x)
  array = x.split
  array[0]
end

def titleize(s)
  words = s.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end
