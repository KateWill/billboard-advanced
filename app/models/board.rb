class Board < ApplicationRecord
  has_many :songs, dependent: :destroy

  def by_rank(songs)
    
    # Song.order(:rank)
    songs.order(:rank)
  end
  # self.songs.sort_by { |song| song[:rank]}
  # self.songs.sort_by { |song| song[:rank]}
  # self.songs.order(:rank)
  # self.order(self.songs.rank)
  # self.order(:rank)
  # self.order(songs.rank)
  # self.order(songs.rank :asc)
  # self.order(:rank)
  
  def show_all_songs
    @all_songs = Songs.all
  end
end
