class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :encrypted_password
      t.bigint :phone_number
      t.string :email
      t.boolean :admin
      

      t.timestamps
    end
  end
end
