class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :title
      t.text :description
      t.string :type

      t.timestamps null: false
    end
  end
end
