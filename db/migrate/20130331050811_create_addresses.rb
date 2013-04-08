class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :suburb
      t.string :state      
      t.string :post_code
      t.integer :customer_id
      #t.integer :addressable_id
      #t.string :addressable_type      
      t.timestamps
    end
    #add_index :addresses, [:addressable_type, :addressable_id], :unique => true
  end
end
