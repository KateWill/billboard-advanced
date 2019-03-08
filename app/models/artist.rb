class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  def add_artist_to_song

    # find songs that arist 
    # /boards/1/songs/1
    # @song
    
    # .update(@artist)
  end

end
