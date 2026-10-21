
class LibraryItem
  attr_reader :title, :author, :publication_year

  def initialize(title, author, publication_year)
    @title = title
    @author = author
    @publication_year = publication_year
  end

  def display_info
    puts "Title: #{@title}"
    puts "Author: #{@author}"
    puts "Publication Year: #{@publication_year}"
  end
end

class Book < LibraryItem
  attr_reader :genre

  def initialize(title, author, publication_year, genre)
    super(title, author, publication_year)
    @genre = genre
  end

  def display_info
    puts "\n--- Book ---"
    super
    puts "Genre: #{@genre}"
  end
end
   


class DVD < LibraryItem
  attr_reader :director, :genre

  def initialize(title, director, publication_year, genre)
    super(title, director, publication_year)
    @director = director
    @genre = genre
  end

  def display_info
    puts "\n--- DVD ---"
    super
    puts "Director: #{@director}"
    puts "Genre: #{@genre}"
  end
end
  


class CD < LibraryItem
  attr_reader :artist, :genre

  def initialize(title, artist, publication_year, genre)
    super(title, artist, publication_year)
    @artist = artist
    @genre = genre
  end

  def display_info
    puts "\n--- CD ---"
    super
    puts "Artist: #{@artist}"
    puts "Genre: #{@genre}"
  end
end
  

# Crеatе instancеs of diffеrеnt library itеms
book = Book.new("Concеpts of Programming Languagеs", "Robеrt Sеbеsta", 2015, "Programming")
dvd = DVD.new("Incеption", "Christophеr Nolan", 2010, "Sciеncе Fiction")
cd = CD.new("A Day at thе Racеs", "Quееn", 1976, "Rock")
 
# Display itеms individually
book.display_info
dvd.display_info
cd.display_info