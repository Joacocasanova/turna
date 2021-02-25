class AddAvgpriceToProviders < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :avg_price, :integer
  end
end
