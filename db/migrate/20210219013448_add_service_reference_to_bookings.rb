class AddServiceReferenceToBookings < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :provider, index: false
    add_reference :bookings, :service, foreign_key: true, null: false
  end
end
