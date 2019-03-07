class Song < ApplicationRecord
  belongs_to :board
  belongs_to :artist, optional: true

  # # called on a class Person.by_first_name
  # def self.by_rank
  #   order(:rank)
  # end
  # self.order(:rank)
  # Song.order(:rank)
end
