class AddOpeningtimeToProviders < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :opening_time, :datetime
    add_column :providers, :closing_time, :datetime
    add_column :providers, :neighborhood, :string
  end
end
