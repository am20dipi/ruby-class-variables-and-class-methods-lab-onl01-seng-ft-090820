class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count += 1
    @@genres << genre #contains all of the genres of existing songs
    @@artists << artist #contains all of the artists of existing songs
  end
  
  def self.count #is a class method that returns a number of songs created
    @@count
  end
  
  def self.artists #is a class method that returns a unique array of artists
    @@artists.uniq
  end
  
  def self.genres #is a class method that returns a unique array of genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genres.each do |keys, values|
      genre_count[keys] = values.count
      @@genres << genre
    end
  end
  
  def self.artist_count
  end
end



