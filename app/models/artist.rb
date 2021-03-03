class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    songs.first.genre 
  end

  def song_count
    songs.count
  end

  def genre_count
    genres.count
  end
  
  def create(name)
    artist = Artist.new(name)
    artist.save
  end
  
  def find(name)
    Artists.all.detect {|artist| artist.name == name}
  end 
  
  def find_or_create_by(name)
    find(name) || create(name)
  end
  
  
end
