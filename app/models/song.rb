class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    draker = find_or_create_by("Drake")
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found
    self.artist = draker

    
  end
  
  def create(name)
    song = Song.new(name)
    song.save
  end
  
  def find(name)
    songs.all.select {|song| song.name == name}
  end 
  
  def find_or_create_by(name)
    find(name) || create(name)
  end
end