class AddDateRangeToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :date_range, :string
  end
end
