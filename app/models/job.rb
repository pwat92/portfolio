class Job < ActiveRecord::Base
  has_many :skills
  has_many :testimonials
end
