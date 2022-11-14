class CreateEmployeeResources < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_resources do |t|
      
      t.references :resource
      t.references :employee
      t.integer :Quantity
      t.datetime :date_of_issue
      

      t.timestamps
    end
  end
end
