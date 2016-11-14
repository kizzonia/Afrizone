class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :title
      t.string :timimg
      t.string :date
      t.string :place
      t.string :artist

      t.timestamps null: false
    end
  end
end
