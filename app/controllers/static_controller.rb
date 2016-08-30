class StaticController < ApplicationController
  def index
  end

  def about_and_contact
    #contact variables
    @phone_number = "514-318-1280"
    @email = "patrick.watson92@gmail.com"
    @snapchat_link = "https://www.snapchat.com/add/pwat92"
    @instagram_link = ""
    @facebook_link = ""
    @linkedin_link = "https://ca.linkedin.com/in/patrick-watson"

    #skill variables
    #@skills_per_row = 4
    @skills = Skill.all
    #@number_of_rows = (@skills.count.to_f / @skills_per_row.to_f).ceil
    #@index = 0
  end
end
