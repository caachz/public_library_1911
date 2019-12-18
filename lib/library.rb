class Library

  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    @books << author.books.map do |book|
        book
    end
    @books = @books.flatten
  end

  def publication_time_frame_for(author)
    author.books.max_by
    require "pry"; binding.pry
  end
end
