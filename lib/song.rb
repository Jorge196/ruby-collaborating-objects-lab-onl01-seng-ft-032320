class Song
  attr_accessor :name, :artist
@@all = []


  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    new_instance.artist.name = artist.name
    new_instance.name = song.name 
  end


end
