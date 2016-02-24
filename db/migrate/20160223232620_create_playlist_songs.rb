class CreatePlaylistSongs < ActiveRecord::Migration
  def change
    create_table :playlist_songs do |t|
      t.integer :playlist_id, null: false, foreign_key: true
      t.integer :song_id, null: false, foreign_key: true
      t.integer :ord, null:false
      t.timestamps null: false
    end
  add_index :playlist_songs, :playlist_id
  add_index :playlist_songs, :song_id
  end
end