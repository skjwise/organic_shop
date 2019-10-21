class AddDescriptionToSellers < ActiveRecord::Migration[5.1]
  def change
    add_column :sellers, :description, :text
  end
end
