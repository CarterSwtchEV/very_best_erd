class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :cuisines_id
      t.string :name

      t.timestamps

    end
  end
end
