class Song < ApplicationRecord
  belongs_to :boards
  belongs_to :artists
end
