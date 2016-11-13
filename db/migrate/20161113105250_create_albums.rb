class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :artist
      t.text :history
      t.integer :year
      t.text :notes
      t.string :name
      t.references :genre, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
