class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :dropoff_date
      t.date :pickup_date
      t.string_array  :visitors
      t.boolean :pickup_required, :default => false
      t.integer :customer_id
      #t.string :bookable_type 

      t.timestamps
    end
  end
end