class Testimonial < ActiveRecord::Base
  belongs_to :job

  def author
    "- #{self.giver}, #{self.position} @ #{self.job.client}"
  end
end
