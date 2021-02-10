class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :category
      t.string :name
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
