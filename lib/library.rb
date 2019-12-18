class Library

  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out_books = []
  end

  def add_author(author)
    @authors << author
    @books << author.books.map do |book|
        book
    end
    @books = @books.flatten
  end

  def publication_time_frame_for(author)
    newest_book = author.books.max_by do |book|
      book.publication_year
    end

    oldest_book = author.books.min_by do |book|
      book.publication_year
    end
    {start: oldest_book.publication_year, end: newest_book.publication_year}
  end

  def checkout(book)
    exists = @books.find do |book_in_library|
      book
    end
    if exists != nil && book.checked_out == false
      @checked_out_books << book
      book.checked_out = true
    else
      false
    end
  end
end
