class AddRatingToProviders < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :rating, :integer
  end
end
