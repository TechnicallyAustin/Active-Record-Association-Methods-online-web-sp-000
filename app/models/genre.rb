class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.count
  end

  def artist_count
    artists.count
  end

  def all_artist_names
    art_arr = []
    artists.all.each do |t|
      art_arr << t.name
    end
    art_arr
  end
end
