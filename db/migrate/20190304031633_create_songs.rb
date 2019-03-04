class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.integer :artist_id
      t.integer :billboard_id
      t.string :name
      t.integer :rank
      t.belongs_to :boards, foreign_key: true
      t.belongs_to :artists, foreign_key: true

      t.timestamps
    end
  end
end
