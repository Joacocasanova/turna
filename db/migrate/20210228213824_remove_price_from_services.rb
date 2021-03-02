class RemovePriceFromServices < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :price, :integer
  end
end
