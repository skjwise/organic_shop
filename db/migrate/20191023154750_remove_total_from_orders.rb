class RemoveTotalFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :total, :integer
  end
end
