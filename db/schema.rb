# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_03_140146) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deals", force: :cascade do |t|
    t.integer "buyer_id"
    t.integer "seller_id"
    t.integer "product_id"
    t.index ["buyer_id"], name: "index_deals_on_buyer_id"
    t.index ["product_id"], name: "index_deals_on_product_id"
    t.index ["seller_id"], name: "index_deals_on_seller_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "product_id"
    t.index ["product_id"], name: "index_likes_on_product_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.string "description"
    t.integer "price"
    t.string "location"
    t.string "avatar"
    t.string "avatars"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "profile_photo"
    t.string "avatar"
    t.string "email"
  end

end
