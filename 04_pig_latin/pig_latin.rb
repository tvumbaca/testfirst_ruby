def translate(phrase)
  vowels = ["a","e","i","o","u"]
  phoneme = ["qu"]

  words = phrase.split #converts phrase to an array of words.
  
  pig_words = words.map do |word|
    if vowels.include?(word[0])
      word + 'ay'
    elsif phoneme.include?(word[0..1])
      word[2..word.length] + word[0..1] + 'ay'
    elsif phoneme.include?(word[1..2]) and !vowels.include?(word[0])
      word[3..word.length] + word[0..2] + 'ay'
    elsif !vowels.include?(word[0]) and !vowels.include?(word[1]) and !vowels.include?(word[2])
      word[3..word.length] + word[0..2] + 'ay'
    elsif !vowels.include?(word[0]) and !vowels.include?(word[1])
      word[2..word.length] + word[0..1] + 'ay'
    else
      word[1..word.length] + word[0] + 'ay'
    end
  end
  pig_words = pig_words.join(" ")
end