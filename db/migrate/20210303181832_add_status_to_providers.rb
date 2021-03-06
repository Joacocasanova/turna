class AddStatusToProviders < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :status, :boolean, default: false
  end
end
