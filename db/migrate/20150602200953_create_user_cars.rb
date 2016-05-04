class CreateUserCars < ActiveRecord::Migration
  def change
    create_table :user_cars do |t|
      t.integer :user_id
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
