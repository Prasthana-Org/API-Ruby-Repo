class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_type
      t.string :size
      t.string :quantity  
      t.decimal :price


      t.timestamps
    end
  end
end