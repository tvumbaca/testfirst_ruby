class Book
  attr_accessor :title

  def title=(title)
    new_title = title.split
    no_cap = ["and", "in", "the","of", "a","an"]

    cap_words = [new_title[0].capitalize] + new_title[1..-1].map do |word|
      if no_cap.include?(word)
        word
      else
        word.capitalize
      end
    end

    new_title = cap_words.join(" ")
    @title = new_title
  end
end