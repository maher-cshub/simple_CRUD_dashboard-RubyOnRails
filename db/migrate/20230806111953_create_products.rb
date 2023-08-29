class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_type
      t.string :image
      t.string :type
      t.timestamps
    end
  end
end
