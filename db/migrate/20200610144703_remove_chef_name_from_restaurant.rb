class RemoveChefNameFromRestaurant < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :chef_name, :string
  end
end
