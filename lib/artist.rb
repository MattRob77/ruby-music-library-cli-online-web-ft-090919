class Artist 
 
  attr_accessor :name, :songs
  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @songs = [] 
  end 
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  
  def self.destroy_all
    self.all.clear
  end
  
  def self.create(name)
    self.new(name).tap {|object| object.save}
  end
  
  def add_song(song)
    song.artist = self unless song.artist
    @songs << song unless songs.include?(song)
  end
  
  def genres 
    songs.collect do |song|
      song.genre
   end.uniq 
 end 
  
 
end 
