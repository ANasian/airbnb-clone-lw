class ChangeDataTypeForPriceToFlats < ActiveRecord::Migration[6.0]
  def change
    change_column :flats, :price, :float
  end
end
