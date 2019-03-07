class ChangeRankTypeInSongs < ActiveRecord::Migration[5.2]
  def change
    change_column :songs, :rank, 'integer USING CAST(rank AS integer)';
  end

end
# ALTER TABLE 
# the_table ALTER COLUMN col_name TYPE integer USING (trim(col_name)::integer);
