class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    #receives an instance of a song and associates it belongs to this Artist instance
    song.artist = self
  end

  def songs
    #returns an Array of all songs that belong to this Artist instance.
    Song.all.select {|song| song.artist == self}
  end

  def find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.new(name)
    end
    #take in the name that is passed in. Find the artist instance that has that name
    #or create one if it doesnt exist. Either way the return value of the method will be an instance
    #of an artist with the name attribute filled out
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end
