class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :artist_id
      t.string :albumArt
      t.integer :releaseYear
      t.string :genre

      t.timestamps
    end

    create_table :artists do |t|
      t.string :name

      t.timestamps
    end

    create_table :songs do |t|
        t.string :name
        t.integer :album_id
        t.integer :artist_id
        t.float :duration
  
        t.timestamps
    end
  end
end
