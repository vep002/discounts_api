class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.string :price
      t.string :expiration
      t.string :product
      t.string :store

      t.timestamps
    end
  end
end
