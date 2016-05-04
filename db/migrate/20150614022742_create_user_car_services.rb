class CreateUserCarServices < ActiveRecord::Migration
  def change
    create_table :user_car_services do |t|
      t.integer :user_id
      t.integer :car_id
      t.integer :mileage
      t.string :service_type
      t.date :service_date
      t.date :reminder_date

      t.timestamps
    end
  end
end
