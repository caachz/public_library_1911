class Book

  attr_reader :author, :title, :publication_year
  attr_accessor :checked_out

  def initialize(attributes)
    author_first_name = attributes[:author_first_name]
    author_last_name = attributes[:author_last_name]
    @author = author_first_name + " "+ author_last_name
    @title = attributes[:title]
    publication_date = attributes[:publication_date]
    @publication_year = publication_date[-4..-1]
    @checked_out = false
  end
end
