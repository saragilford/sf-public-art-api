class AddLocationNametoArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :location_name, :string
  end
end
