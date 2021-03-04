class AddPaymentStatusToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :payment_status, :string
    add_column :bookings, :checkout_session_id, :string
  end
end
