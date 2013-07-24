class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.boolean :live
      t.text :testimonial
      t.string :category
      t.string :firstname

      t.timestamps
    end
  end
end
