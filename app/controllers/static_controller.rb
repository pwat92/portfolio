class StaticController < ApplicationController
  def index
  end

  def about_and_contact
    #contact variables
    @phone_number = "514-318-1280"
    @email = "patrick.watson92@gmail.com"
    @snapchat_link = "https://www.snapchat.com/add/pwat92"
    @instagram_link = ""
    @facebook_link = "https://www.facebook.com/patrick.watson.7587"
    @linkedin_link = "https://ca.linkedin.com/in/patrick-watson"

    @skills = Skill.all

    @about_me_blurb = ""
  end
end
