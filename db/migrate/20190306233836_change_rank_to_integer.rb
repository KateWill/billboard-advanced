class ChangeRankToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :songs, :rank, :integer
  end
end
