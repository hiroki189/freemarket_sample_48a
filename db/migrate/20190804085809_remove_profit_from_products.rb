class RemoveProfitFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :profit, :integer
  end
end
