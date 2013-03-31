class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.string :email
      t.date :dropoff_date
      t.date :pickup_date
      t.integer :dog_count
      t.boolean :pickup_required, :default => false

      t.timestamps
    end
  end
end
