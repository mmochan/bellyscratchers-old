class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.text :address
      t.date :start_date
      t.date :end_date
      t.string :contact_number
      t.string :email
      t.string :dog_count

      t.timestamps
    end
  end
end
