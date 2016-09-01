class StaticController < ApplicationController
  def index
  end

  def about_and_contact
    #contact variables
    @phone_number = "514-318-1280"
    @email = "patrick.watson92@gmail.com"
    @snapchat_link = "https://www.snapchat.com/add/pwat92"
    @instagram_link = "https://www.instagram.com/patrickwatson92/"
    @facebook_link = "https://www.facebook.com/patrick.watson.7587"
    @linkedin_link = "https://ca.linkedin.com/in/patrick-watson"

    @skills = Skill.all

    @about_me_blurb = "Hi I’m Patrick, and I build stuff for the internet. I realized at a young age that what I love above all else is learning, discovering new concepts and solving problems. I love to learn new things and try to experience as much as I possibly can. Right now I am learning rails, and loving it, and more than that I am trying to learn the core software engineering concepts behind rails to really grasp how it works. I have a very varied background, I studied political science at Concordia university in Montreal, and I ran a residential paint contracting company west of the Montreal area of 2 years. I think my unique combination of skills and experiences gives me a different view on the development process. When managing my painting company I was in charge of all marketing, selling and producing of the work, including hiring and managing a staff of painters. I understand how to take initiative and lead others to achieve their goals. Studying political science has helped me to understand how the world works on a deeper level. The combination of these experiences and others along with my development skills are what I think make me an awesome developer. I am always excited to learn new skills and always looking for the next awesome opportunity and to work on projects I can be passionate about and add value too."
  end
end
