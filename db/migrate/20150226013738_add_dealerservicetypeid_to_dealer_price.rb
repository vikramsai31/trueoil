class AddDealerservicetypeidToDealerPrice < ActiveRecord::Migration
  def change
    add_column :dealer_prices, :dealerservice_type_id, :integer
  end
end
