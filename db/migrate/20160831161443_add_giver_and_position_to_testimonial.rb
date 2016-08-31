class AddGiverAndPositionToTestimonial < ActiveRecord::Migration
  def change
    add_column :testimonials, :giver, :string
    add_column :testimonials, :position, :string
  end
end
