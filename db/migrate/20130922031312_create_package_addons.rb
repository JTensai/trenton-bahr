class CreatePackageAddons < ActiveRecord::Migration
  def change
    create_table :package_addons do |t|
      t.integer :addon_id
      t.integer :package_id
      t.timestamps
    end
  end
end
