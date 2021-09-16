class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :title
      t.string :address
      t.string :city
      t.text :description
      t.integer :size
      t.integer :price

      t.timestamps
    end
  end
end
