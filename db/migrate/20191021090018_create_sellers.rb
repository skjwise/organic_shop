class CreateSellers < ActiveRecord::Migration[5.1]
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :email
      t.string :image

      t.timestamps
    end
  end
end
