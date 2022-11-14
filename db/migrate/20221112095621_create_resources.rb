class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :Assets
      t.string :Brand
      t.string :Generation
      t.string :Tag_No
      t.string :color

      t.timestamps
    end
  end
end
