class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :address
      t.integer :neighborhood_id
      t.float :latitude
      t.float :longitude
      t.string :title
      t.string :dimensions
      t.string :medium
      t.integer :artist_id
      t.string :credit

      t.timestamps null: false
    end
  end
end
