class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :checkin
      t.date :checkout
      t.string_array :guests
      t.boolean :require_collection, :default => false
      t.integer :customer_id
      #t.string :bookable_type 

      t.timestamps
    end
  end
end