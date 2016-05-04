class AddDealeridToDealerPrice < ActiveRecord::Migration
  def change
    add_column :dealer_prices, :dealer_id, :integer
  end
end
