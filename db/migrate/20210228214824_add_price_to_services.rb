class AddPriceToServices < ActiveRecord::Migration[6.0]
  def change
    add_monetize :services, :price, currency: { present: false }
  end
end
