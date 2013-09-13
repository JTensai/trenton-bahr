class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :job_title
      t.string :image
      t.string :description
      t.boolean :current
      t.integer :sort_order

      t.timestamps
    end
  end
end
