require './lib/book'

class Author

  attr_reader :name, :books

  def initialize(attributes)
    first_name = attributes[:first_name]
    last_name = attributes[:last_name]
    @name = first_name + " " + last_name
    @books = []
  end

  def write(title, date_published)
    book_attributes = {}
    book_attributes[:title] = title
    book_attributes[:publication_date] = date_published
    book_attributes[:author_first_name] = self.name.split(/ /)[0]
    book_attributes[:author_last_name] = self.name.split(/ /)[1]
    new_book = Book.new(book_attributes)
    @books << new_book
    new_book
  end

end
