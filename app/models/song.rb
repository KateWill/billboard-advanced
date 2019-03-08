class Song < ApplicationRecord
  belongs_to :board
  belongs_to :artist, optional: true

  # # called on a class Person.by_first_name
  def by_name
    self.name
  end
  # self.order(:rank)
  # Song.order(:rank)
  # def set_song
  #   if @artist
  #     @song = Song.new
  #   else
  #     @song = @board.songs.new
  #   end
  # end
end
