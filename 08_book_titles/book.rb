# 08_book_titles

class Book
  # Setter method for title
  def title=(title)
    @title = title
  end

  def title
    words = @title.split(' ').map do |word|
    no_cap = %w{and in the of a an}
      
      if no_cap.include?(word)
        word
      else
        word.capitalize
      end
    end.join(' ')

    # Will always capitalize first letter of string
    words[0].capitalize + words[1..-1]
  end

end