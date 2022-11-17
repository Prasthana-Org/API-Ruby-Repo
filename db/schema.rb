# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_17_050738) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "village"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "author_id"
  end

  create_table "details", force: :cascade do |t|
    t.string "name"
    t.string "sname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_resources", force: :cascade do |t|
    t.bigint "resource_id"
    t.bigint "employee_id"
    t.integer "Quantity"
    t.datetime "date_of_issue", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_employee_resources_on_employee_id"
    t.index ["resource_id"], name: "index_employee_resources_on_resource_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "F_name"
    t.string "L_name"
    t.text "Address"
    t.string "Emp_type"
    t.string "Designation"
    t.integer "Emp_manager"
    t.bigint "Phone_number"
    t.string "email"
    t.datetime "DOB", precision: nil
    t.datetime "DOJ", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.bigint "invoice_number"
    t.integer "quantity"
    t.integer "unit_price"
    t.float "total_amount"
    t.string "shipping_address"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_invoices_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_type"
    t.string "product_name"
    t.text "description"
    t.float "prices"
    t.bigint "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_products_on_supplier_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "Assets"
    t.string "Brand"
    t.string "Generation"
    t.string "Tag_No"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "company_name"
    t.string "phone_number"
    t.string "city"
    t.integer "pincode"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user1_products", force: :cascade do |t|
    t.bigint "user1_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_user1_products_on_product_id"
    t.index ["user1_id"], name: "index_user1_products_on_user1_id"
  end

  create_table "user1s", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "email"
    t.string "encrypted_password"
    t.bigint "phone_number"
    t.string "address"
    t.integer "zipcode"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user2s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
