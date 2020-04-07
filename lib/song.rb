class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist_name
    new_song
  end

  def artist_name=(name)
    #turn the artists name as a string into an Artist object
    #either we have to create the artist instance
    #or it exists and we have to find that instance
    #assign the song to the artist
  end
end
