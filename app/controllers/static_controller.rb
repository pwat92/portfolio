class StaticController < ApplicationController
  def index
  end

  def about_and_contact
    @phone_number = "514-318-1280"
    @email = "patrick.watson92@gmail.com"
    @snapchat_link = "https://www.snapchat.com/add/pwat92"
    @instagram_link = ""
    @facebook_link = ""
    @linkedin_link = ""
  end
end
