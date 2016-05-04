class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.string :businessname
      t.string :address
      t.string :city
      t.integer :zip
      t.integer :phone
      t.string :contactperson

      t.timestamps
    end
  end
end
