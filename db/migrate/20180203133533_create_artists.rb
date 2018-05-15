class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
    end

    create_table :genres do |t|
      t.string :name
      t.integer :song_id
      t.integer :artist_id
    end

    create_table :songs do |t|
      t.string :name
      t.integer :genre_id
      t.belongs_to :artist, index: true
    end

    create_table :song_genres do |t|
      t.integer :song_id
      t.integer :genre_id
    end
  end
end
