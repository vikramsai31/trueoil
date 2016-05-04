class AddServicetypeToDealerPrice < ActiveRecord::Migration
  def change
    add_column :dealer_prices, :service_type, :string
  end
end
