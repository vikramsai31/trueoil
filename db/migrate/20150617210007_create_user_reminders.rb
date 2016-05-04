class CreateUserReminders < ActiveRecord::Migration
  def change
    create_table :user_reminders do |t|
      t.integer :user_id
      t.integer :car_id
      t.string :service_type
      t.date :reminder_date
      t.integer :active_status

      t.timestamps
    end
  end
end
