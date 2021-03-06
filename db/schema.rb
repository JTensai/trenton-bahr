# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131016002849) do

  create_table "addons", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.text     "details"
    t.boolean  "active"
    t.integer  "sort_order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "charity_of_the_months", :force => true do |t|
    t.string   "header_image"
    t.text     "text"
    t.string   "title"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "contact_forms", :force => true do |t|
    t.string   "request_type"
    t.string   "name"
    t.string   "phone_number"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "email"
    t.text     "comments"
    t.string   "contact_time"
    t.time     "preferred_time"
    t.string   "preferred_day"
    t.date     "preferred_date_one"
    t.date     "preferred_date_two"
    t.date     "preferred_date_three"
    t.integer  "session_type_id"
    t.string   "auction_type"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "downloads", :force => true do |t|
    t.string   "file"
    t.string   "name"
    t.integer  "sort_order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.string   "job_title"
    t.string   "image"
    t.text     "description"
    t.boolean  "current"
    t.integer  "sort_order"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.date     "date"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.time     "time"
    t.string   "link_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "gallery_image_categories", :force => true do |t|
    t.string   "name"
    t.integer  "sort_order"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "gallery_images", :force => true do |t|
    t.string   "image"
    t.integer  "sort_order"
    t.string   "category"
    t.string   "caption"
    t.integer  "gallery_image_category_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "newsletter_subscriptions", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "newsletters", :force => true do |t|
    t.string   "file"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "our_charities", :force => true do |t|
    t.string   "name"
    t.integer  "sort_order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "package_addons", :force => true do |t|
    t.integer  "addon_id"
    t.integer  "package_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "packages", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "sort_order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rotating_images", :force => true do |t|
    t.string   "image"
    t.boolean  "live"
    t.integer  "sort_order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "session_infos", :force => true do |t|
    t.string   "video_link"
    t.text     "what_to_expect"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "session_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "testimonials", :force => true do |t|
    t.boolean  "live"
    t.text     "testimonial"
    t.string   "category"
    t.string   "firstname"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "trentons", :force => true do |t|
    t.string   "image"
    t.text     "meet_the_artist_text"
    t.string   "video_link"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
