class AddMindurationToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :min_duration, :integer
  end
end
