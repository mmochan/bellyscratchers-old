class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :checkin
      t.date :checkout
      t.string_array :guests
      t.string :collection_required
      t.integer :customer_id
      #t.string :bookable_type 

      t.timestamps
    end
  end
end