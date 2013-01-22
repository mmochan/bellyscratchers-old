class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :address
      t.string :mobile
      t.string :date

      t.timestamps
    end
  end
end
