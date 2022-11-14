class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :F_name
      t.string :L_name
      t.text   :Address
      t.string :Emp_type
      t.string :Designation
      t.integer :Emp_manager
      t.bigint :Phone_number
      t.string :email
      t.datetime :DOB
      t.datetime :DOJ

      t.timestamps
    end
  end
end
