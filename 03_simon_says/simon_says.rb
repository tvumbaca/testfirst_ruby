def echo(says)
  says
end

def shout(says)
  says.upcase
end

def repeat(says, num=2)
  ((says + " ") * num).chop  #.chop removes the last space/character.
end

def start_of_word(string, num)
  string[0,num]
end

def first_word(string)
  string.split[0]
end

def titleize(string)
  words = string.split
  words.each do |x|
    if x.length > 3 and x != "over" or x == words[0]
      x.capitalize!
    end
  end
  string = words.join(" ")
end