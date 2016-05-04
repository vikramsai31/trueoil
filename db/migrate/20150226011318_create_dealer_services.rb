class CreateDealerServices < ActiveRecord::Migration
  def change
    create_table :dealer_services do |t|
      t.string :service_type

      t.timestamps
    end
  end
end
