class AddStateToDealer < ActiveRecord::Migration
  def change
    add_column :dealers, :state, :string
  end
end
