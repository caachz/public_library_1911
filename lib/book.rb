class Book

  attr_reader :author_first_name, :author_last_name, :author, :author_last_name, :title, :publication_date, :publication_year

  def initialize(attributes)
    @author_first_name = attributes[:author_first_name]
    @author_last_name = attributes[:author_last_name]
    @author = @author_first_name + " "+ @author_last_name
    @title = attributes[:title]
    @publication_date = attributes[:publication_date]
    @publication_year = @publication_date[-4..-1]
  end
end
