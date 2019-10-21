class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.integer :seller_id

      t.timestamps
    end
  end
end
