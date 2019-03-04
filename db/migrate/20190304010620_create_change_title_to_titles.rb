class CreateChangeTitleToTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :change_title_to_titles do |t|
      rename_column :boards, :Title, :title
      t.timestamps
    end
  end
end
