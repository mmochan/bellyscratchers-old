class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.text :description
      t.string :sex  # Should be M or F
      t.integer :age
      t.text :special_notes
      t.text :dietary_requirements
      t.integer :customer_id

      t.timestamps
    end
  end
end
