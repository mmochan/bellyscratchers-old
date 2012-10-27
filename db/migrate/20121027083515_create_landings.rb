class CreateLandings < ActiveRecord::Migration
  def change
    create_table :landings do |t|
      t.string :name

      t.timestamps
    end
  end
end
