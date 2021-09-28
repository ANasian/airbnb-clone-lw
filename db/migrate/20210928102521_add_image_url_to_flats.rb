class AddImageUrlToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :image_url, :string
  end
end
