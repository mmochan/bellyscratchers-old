class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      #t.string :email
      t.string :phone
      t.timestamps
    end
    #add_index :customers, :email, :unique => true
  end
end
