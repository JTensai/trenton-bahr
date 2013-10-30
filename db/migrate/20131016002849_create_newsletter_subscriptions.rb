class CreateNewsletterSubscriptions < ActiveRecord::Migration
  def change
    create_table :newsletter_subscriptions do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
