class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :testimonial
      t.references :job

      t.timestamps null: false
    end
  end
end
