class CreateDealerPrices < ActiveRecord::Migration
  def change
    create_table :dealer_prices do |t|
      t.integer :type
      t.decimal :price, :precision => 6, :scale => 2
      t.timestamps
    end
  end
end
