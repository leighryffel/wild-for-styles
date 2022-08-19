class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :album_id
      t.integer :length
      t.integer :likes

      t.timestamps
    end
  end
end
