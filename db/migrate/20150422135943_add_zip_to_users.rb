class AddZipToUsers < ActiveRecord::Migration
  def change
    add_column :users, :zip, :integer,:limit => 5
  end
end
