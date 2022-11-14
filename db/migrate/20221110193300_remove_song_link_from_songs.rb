class RemoveSongLinkFromSongs < ActiveRecord::Migration[7.0]
  def change
    remove_column :songs, :song_link, :string
  end
end
