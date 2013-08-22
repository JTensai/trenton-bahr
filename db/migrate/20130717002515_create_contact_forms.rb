class CreateContactForms < ActiveRecord::Migration
  def change
    create_table :contact_forms do |t|
      t.string :request_type
      t.string :name
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :email
      t.text :comments
      t.string :contact_time
      t.time :preferred_time
      t.string :preferred_day
      t.date :preferred_date_one
      t.date :preferred_date_two
      t.date :preferred_date_three
      t.integer :session_type_id
      t.string :auction_type

      t.timestamps
    end
  end
end
