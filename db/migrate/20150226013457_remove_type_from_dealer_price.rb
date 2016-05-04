class RemoveTypeFromDealerPrice < ActiveRecord::Migration
  def change
    remove_column :dealer_prices, :type, :integer
  end
end
